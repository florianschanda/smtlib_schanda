(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2249099754347734236858968870365060865879058837890625p-959 {+ 1012904481559953 -959 (2.51384e-289)}
; Y = 1.5321179563835054526776957573019899427890777587890625p344 {+ 2396446230085905 344 (5.49049e+103)}
; 1.2249099754347734236858968870365060865879058837890625p-959 > 1.5321179563835054526776957573019899427890777587890625p344 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000000 #b0011100110010011101100110011110100001001010110010001)))
(assert (= y (fp #b0 #b10101010111 #b1000100000111000111000011110010001001000000100010001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7635602374048355844848856577300466597080230712890625p-1008 {- 3438769600651345 -1008 (-6.42917e-304)}
; Y = 1.5799804514459780957480461438535712659358978271484375p-853 {+ 2611999745014279 -853 (2.63066e-257)}
; -1.7635602374048355844848856577300466597080230712890625p-1008 > 1.5799804514459780957480461438535712659358978271484375p-853 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001111 #b1100001101111000101011110000100000101110000001010001)))
(assert (= y (fp #b0 #b00010101010 #b1001010001111001100110010100111101000111101000000111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

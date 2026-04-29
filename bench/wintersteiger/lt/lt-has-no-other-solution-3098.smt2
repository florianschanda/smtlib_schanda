(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1453309361382988385003045550547540187835693359375p620 {- 654512349837848 620 (-4.98343e+186)}
; Y = 1.779364040290202897409699289710260927677154541015625p-225 {+ 3509943601436922 -225 (3.30001e-068)}
; -1.1453309361382988385003045550547540187835693359375p620 < 1.779364040290202897409699289710260927677154541015625p-225 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101011 #b0010010100110100011010001000000111001111101000011000)))
(assert (= y (fp #b0 #b01100011110 #b1100011110000100011001101101100010111001100011111010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

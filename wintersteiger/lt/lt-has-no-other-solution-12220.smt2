(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6016550558624798039630832136026583611965179443359375p522 {- 2709613485387839 522 (-2.19901e+157)}
; Y = 1.8687482797176635518354714804445393383502960205078125p-936 {+ 3912494428815229 -936 (3.21718e-282)}
; -1.6016550558624798039630832136026583611965179443359375p522 < 1.8687482797176635518354714804445393383502960205078125p-936 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000001001 #b1001101000000110000100001101010001100111000000111111)))
(assert (= y (fp #b0 #b00001010111 #b1101111001100110010010011000100111010111111101111101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

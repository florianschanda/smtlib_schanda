(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9114367858694600865732127203955315053462982177734375p501 {- 4104746369213463 501 (-1.25138e+151)}
; Y = 1.6212164085716838091144609279581345617771148681640625p34 {+ 2797709986159873 34 (2.78523e+010)}
; -1.9114367858694600865732127203955315053462982177734375p501 * 1.6212164085716838091144609279581345617771148681640625p34 == -1.54942634059954453817908870405517518520355224609375p536
; [HW: -1.54942634059954453817908870405517518520355224609375p536] 

; mpf : - 2474396262791644 536
; mpfd: - 2474396262791644 536 (-3.48537e+161) class: Neg. norm. non-zero
; hwf : - 2474396262791644 536 (-3.48537e+161) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111110100 #b1110100101010011111010111101001110101110010000010111)))
(assert (= y (fp #b0 #b10000100001 #b1001111100001000000010011101111010001101110100000001)))
(assert (= r (fp #b1 #b11000010111 #b1000110010100111001101000110010001101111100111011100)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)

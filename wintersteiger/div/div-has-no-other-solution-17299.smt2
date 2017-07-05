(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.713923428783212354886700268252752721309661865234375p320 {+ 3215225287839142 320 (3.66092e+096)}
; Y = 1.2611774530905235369715455817640759050846099853515625p-261 {+ 1176238680416057 -261 (3.40367e-079)}
; 1.713923428783212354886700268252752721309661865234375p320 / 1.2611774530905235369715455817640759050846099853515625p-261 == 1.3589867346448605278652621564106084406375885009765625p581
; [HW: 1.3589867346448605278652621564106084406375885009765625p581] 

; mpf : + 1616732524377545 581
; mpfd: + 1616732524377545 581 (1.07558e+175) class: Pos. norm. non-zero
; hwf : + 1616732524377545 581 (1.07558e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111111 #b1011011011000011101011111001001001111000110110100110)))
(assert (= y (fp #b0 #b01011111010 #b0100001011011100100001101000101101111001111100111001)))
(assert (= r (fp #b0 #b11001000100 #b0101101111100110100011011111110011111111010111001001)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)

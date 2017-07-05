(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7425696864224546889232669855118729174137115478515625p675 {- 3344236563068793 675 (-2.73173e+203)}
; Y = 1.94470332934255196732920012436807155609130859375p-810 {+ 4254565562002784 -810 (2.84811e-244)}
; -1.7425696864224546889232669855118729174137115478515625p675 + 1.94470332934255196732920012436807155609130859375p-810 == -1.7425696864224544668786620604805648326873779296875p675
; [HW: -1.7425696864224544668786620604805648326873779296875p675] 

; mpf : - 3344236563068792 675
; mpfd: - 3344236563068792 675 (-2.73173e+203) class: Neg. norm. non-zero
; hwf : - 3344236563068792 675 (-2.73173e+203) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100010 #b1011111000011001000011000000011000101111011101111001)))
(assert (= y (fp #b0 #b00011010101 #b1111000111011000000100111100111111110010110101100000)))
(assert (= r (fp #b1 #b11010100010 #b1011111000011001000011000000011000101111011101111000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)

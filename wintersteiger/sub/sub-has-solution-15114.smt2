(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0659993350666596700904165118117816746234893798828125p899 {+ 297234580812909 899 (4.50529e+270)}
; Y = -1.9563405348725859678182814604952000081539154052734375p-600 {- 4306974876491479 -600 (-4.71462e-181)}
; 1.0659993350666596700904165118117816746234893798828125p899 - -1.9563405348725859678182814604952000081539154052734375p-600 == 1.0659993350666596700904165118117816746234893798828125p899
; [HW: 1.0659993350666596700904165118117816746234893798828125p899] 

; mpf : + 297234580812909 899
; mpfd: + 297234580812909 899 (4.50529e+270) class: Pos. norm. non-zero
; hwf : + 297234580812909 899 (4.50529e+270) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110000010 #b0001000011100101010101010001100110101011010001101101)))
(assert (= y (fp #b1 #b00110100111 #b1111010011010010101110111011100100011101111011010111)))
(assert (= r (fp #b0 #b11110000010 #b0001000011100101010101010001100110101011010001101101)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)

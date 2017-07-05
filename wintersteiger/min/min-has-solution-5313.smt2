(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.913670940236527062694449341506697237491607666015625p-518 {- 4114808105988474 -518 (-2.23013e-156)}
; Y = -1.6949936811963797200775161400088109076023101806640625p-994 {- 3129973283660865 -994 (-1.0124e-299)}
; -1.913670940236527062694449341506697237491607666015625p-518 m -1.6949936811963797200775161400088109076023101806640625p-994 == -1.913670940236527062694449341506697237491607666015625p-518
; [HW: -1.913670940236527062694449341506697237491607666015625p-518] 

; mpf : - 4114808105988474 -518
; mpfd: - 4114808105988474 -518 (-2.23013e-156) class: Neg. norm. non-zero
; hwf : - 4114808105988474 -518 (-2.23013e-156) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111001 #b1110100111100110010101101011011110011111000101111010)))
(assert (= y (fp #b1 #b00000011101 #b1011000111101011000110110001101110101010010001000001)))
(assert (= r (fp #b1 #b00111111001 #b1110100111100110010101101011011110011111000101111010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

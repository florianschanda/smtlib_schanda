(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.454340634120080633095994926407001912593841552734375p-990 {+ 2046168310522470 -990 (1.38986e-298)}
; Y = -1.2072033508421140535205040578148327767848968505859375p684 {- 933160933642463 684 (-9.68941e+205)}
; 1.454340634120080633095994926407001912593841552734375p-990 * -1.2072033508421140535205040578148327767848968505859375p684 == -1.7556848867756063015121981152333319187164306640625p-306
; [HW: -1.7556848867756063015121981152333319187164306640625p-306] 

; mpf : - 3403302174492136 -306
; mpfd: - 3403302174492136 -306 (-1.34669e-092) class: Neg. norm. non-zero
; hwf : - 3403302174492136 -306 (-1.34669e-092) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000100001 #b0111010001001111101010101111010011001010001001100110)))
(assert (= y (fp #b1 #b11010101011 #b0011010100001011010001110101111101111101000011011111)))
(assert (= r (fp #b1 #b01011001101 #b1100000101110100100100001001001011001000010111101000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)

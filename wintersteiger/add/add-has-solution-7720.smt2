(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7553354626673087768295999921974726021289825439453125p-708 {- 3401728508208213 -708 (-1.30354e-213)}
; Y = -1.04844272093540968882052766275592148303985595703125p-96 {- 218166619953524 -96 (-1.32332e-029)}
; -1.7553354626673087768295999921974726021289825439453125p-708 + -1.04844272093540968882052766275592148303985595703125p-96 == -1.04844272093540968882052766275592148303985595703125p-96
; [HW: -1.04844272093540968882052766275592148303985595703125p-96] 

; mpf : - 218166619953524 -96
; mpfd: - 218166619953524 -96 (-1.32332e-029) class: Neg. norm. non-zero
; hwf : - 218166619953524 -96 (-1.32332e-029) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111011 #b1100000101011101101010100011010110101010010001010101)))
(assert (= y (fp #b1 #b01110011111 #b0000110001100110101111011111111000100101100101110100)))
(assert (= r (fp #b1 #b01110011111 #b0000110001100110101111011111111000100101100101110100)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)

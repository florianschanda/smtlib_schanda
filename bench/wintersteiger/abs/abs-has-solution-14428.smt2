(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0240176965461504909882251013186760246753692626953125p-657 {- 108166089215541 -657 (-1.71238e-198)}
; -1.0240176965461504909882251013186760246753692626953125p-657 | == 1.0240176965461504909882251013186760246753692626953125p-657
; [HW: 1.0240176965461504909882251013186760246753692626953125p-657] 

; mpf : + 108166089215541 -657
; mpfd: + 108166089215541 -657 (1.71238e-198) class: Pos. norm. non-zero
; hwf : + 108166089215541 -657 (1.71238e-198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101101110 #b0000011000100110000001100001010100110000111000110101)))
(assert (= r (fp #b0 #b00101101110 #b0000011000100110000001100001010100110000111000110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

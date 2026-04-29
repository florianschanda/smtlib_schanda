(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6009360019916398787387379343272186815738677978515625p-551 {+ 2706375154643065 -551 (2.17193e-166)}
; 1.6009360019916398787387379343272186815738677978515625p-551 | == 1.6009360019916398787387379343272186815738677978515625p-551
; [HW: 1.6009360019916398787387379343272186815738677978515625p-551] 

; mpf : + 2706375154643065 -551
; mpfd: + 2706375154643065 -551 (2.17193e-166) class: Pos. norm. non-zero
; hwf : + 2706375154643065 -551 (2.17193e-166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111011000 #b1001100111010110111100010001101110001011000001111001)))
(assert (= r (fp #b0 #b00111011000 #b1001100111010110111100010001101110001011000001111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

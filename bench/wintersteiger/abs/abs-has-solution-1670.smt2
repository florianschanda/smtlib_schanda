(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3589213012328469343259484958252869546413421630859375p385 {+ 1616437838487583 385 (1.07088e+116)}
; 1.3589213012328469343259484958252869546413421630859375p385 | == 1.3589213012328469343259484958252869546413421630859375p385
; [HW: 1.3589213012328469343259484958252869546413421630859375p385] 

; mpf : + 1616437838487583 385
; mpfd: + 1616437838487583 385 (1.07088e+116) class: Pos. norm. non-zero
; hwf : + 1616437838487583 385 (1.07088e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000000 #b0101101111100010010001000011001010100010000000011111)))
(assert (= r (fp #b0 #b10110000000 #b0101101111100010010001000011001010100010000000011111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

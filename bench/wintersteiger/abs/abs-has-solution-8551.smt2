(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6080026999914462937368853090447373688220977783203125p-486 {- 2738200733121733 -486 (-8.04839e-147)}
; -1.6080026999914462937368853090447373688220977783203125p-486 | == 1.6080026999914462937368853090447373688220977783203125p-486
; [HW: 1.6080026999914462937368853090447373688220977783203125p-486] 

; mpf : + 2738200733121733 -486
; mpfd: + 2738200733121733 -486 (8.04839e-147) class: Pos. norm. non-zero
; hwf : + 2738200733121733 -486 (8.04839e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011001 #b1001101110100110000100001010000001010111110011000101)))
(assert (= r (fp #b0 #b01000011001 #b1001101110100110000100001010000001010111110011000101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

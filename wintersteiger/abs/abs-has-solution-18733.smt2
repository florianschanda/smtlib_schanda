(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.096275624063796971796591606107540428638458251953125p-402 {- 433586864658578 -402 (-1.06136e-121)}
; -1.096275624063796971796591606107540428638458251953125p-402 | == 1.096275624063796971796591606107540428638458251953125p-402
; [HW: 1.096275624063796971796591606107540428638458251953125p-402] 

; mpf : + 433586864658578 -402
; mpfd: + 433586864658578 -402 (1.06136e-121) class: Pos. norm. non-zero
; hwf : + 433586864658578 -402 (1.06136e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001101101 #b0001100010100101100001001111000011000001100010010010)))
(assert (= r (fp #b0 #b01001101101 #b0001100010100101100001001111000011000001100010010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

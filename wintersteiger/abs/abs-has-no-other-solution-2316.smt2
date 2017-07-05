(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.234801215494937043359868766856379806995391845703125p387 {+ 1057450666609138 387 (3.89229e+116)}
; 1.234801215494937043359868766856379806995391845703125p387 | == 1.234801215494937043359868766856379806995391845703125p387
; [HW: 1.234801215494937043359868766856379806995391845703125p387] 

; mpf : + 1057450666609138 387
; mpfd: + 1057450666609138 387 (3.89229e+116) class: Pos. norm. non-zero
; hwf : + 1057450666609138 387 (3.89229e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000010 #b0011110000011011111011101011010110011100100111110010)))
(assert (= r (fp #b0 #b10110000010 #b0011110000011011111011101011010110011100100111110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

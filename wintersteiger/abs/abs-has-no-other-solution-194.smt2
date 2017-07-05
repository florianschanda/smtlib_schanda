(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1590164942448186735646231682039797306060791015625p-869 {- 716146624226728 -869 (-2.94458e-262)}
; -1.1590164942448186735646231682039797306060791015625p-869 | == 1.1590164942448186735646231682039797306060791015625p-869
; [HW: 1.1590164942448186735646231682039797306060791015625p-869] 

; mpf : + 716146624226728 -869
; mpfd: + 716146624226728 -869 (2.94458e-262) class: Pos. norm. non-zero
; hwf : + 716146624226728 -869 (2.94458e-262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011010 #b0010100010110101010011100001001001001110010110101000)))
(assert (= r (fp #b0 #b00010011010 #b0010100010110101010011100001001001001110010110101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

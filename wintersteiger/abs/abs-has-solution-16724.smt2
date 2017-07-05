(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5678593768651396533897468543727882206439971923828125p996 {- 2557411278048685 996 (-1.04998e+300)}
; -1.5678593768651396533897468543727882206439971923828125p996 | == 1.5678593768651396533897468543727882206439971923828125p996
; [HW: 1.5678593768651396533897468543727882206439971923828125p996] 

; mpf : + 2557411278048685 996
; mpfd: + 2557411278048685 996 (1.04998e+300) class: Pos. norm. non-zero
; hwf : + 2557411278048685 996 (1.04998e+300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100011 #b1001000101011111001110110110110001011100110110101101)))
(assert (= r (fp #b0 #b11111100011 #b1001000101011111001110110110110001011100110110101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

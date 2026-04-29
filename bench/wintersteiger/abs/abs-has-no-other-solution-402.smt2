(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8384725157998087485822225062293000519275665283203125p-317 {- 3776144509716421 -317 (-6.88571e-096)}
; -1.8384725157998087485822225062293000519275665283203125p-317 | == 1.8384725157998087485822225062293000519275665283203125p-317
; [HW: 1.8384725157998087485822225062293000519275665283203125p-317] 

; mpf : + 3776144509716421 -317
; mpfd: + 3776144509716421 -317 (6.88571e-096) class: Pos. norm. non-zero
; hwf : + 3776144509716421 -317 (6.88571e-096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011000010 #b1101011010100110001000101000000111110100011111000101)))
(assert (= r (fp #b0 #b01011000010 #b1101011010100110001000101000000111110100011111000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

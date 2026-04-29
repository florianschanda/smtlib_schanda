(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3734078097293640485787591387634165585041046142578125p-742 {- 1681679272754397 -742 (-5.93667e-224)}
; -1.3734078097293640485787591387634165585041046142578125p-742 | == 1.3734078097293640485787591387634165585041046142578125p-742
; [HW: 1.3734078097293640485787591387634165585041046142578125p-742] 

; mpf : + 1681679272754397 -742
; mpfd: + 1681679272754397 -742 (5.93667e-224) class: Pos. norm. non-zero
; hwf : + 1681679272754397 -742 (5.93667e-224) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100011001 #b0101111110010111101001110111101011011011110011011101)))
(assert (= r (fp #b0 #b00100011001 #b0101111110010111101001110111101011011011110011011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

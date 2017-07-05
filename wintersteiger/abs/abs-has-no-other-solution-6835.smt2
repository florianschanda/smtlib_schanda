(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2480112442923101401248686670442111790180206298828125p380 {- 1116943347378541 380 (-3.07338e+114)}
; -1.2480112442923101401248686670442111790180206298828125p380 | == 1.2480112442923101401248686670442111790180206298828125p380
; [HW: 1.2480112442923101401248686670442111790180206298828125p380] 

; mpf : + 1116943347378541 380
; mpfd: + 1116943347378541 380 (3.07338e+114) class: Pos. norm. non-zero
; hwf : + 1116943347378541 380 (3.07338e+114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111011 #b0011111101111101101010100011011101000110100101101101)))
(assert (= r (fp #b0 #b10101111011 #b0011111101111101101010100011011101000110100101101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

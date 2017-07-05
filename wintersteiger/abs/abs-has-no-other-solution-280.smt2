(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.911155953936440443641231468063779175281524658203125p756 {- 4103481614624562 756 (-7.24391e+227)}
; -1.911155953936440443641231468063779175281524658203125p756 | == 1.911155953936440443641231468063779175281524658203125p756
; [HW: 1.911155953936440443641231468063779175281524658203125p756] 

; mpf : + 4103481614624562 756
; mpfd: + 4103481614624562 756 (7.24391e+227) class: Pos. norm. non-zero
; hwf : + 4103481614624562 756 (7.24391e+227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110011 #b1110100101000001100001000011111110110110011100110010)))
(assert (= r (fp #b0 #b11011110011 #b1110100101000001100001000011111110110110011100110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3681805969469451600417642112006433308124542236328125p895 {+ 1658137999215309 895 (3.61401e+269)}
; 1.3681805969469451600417642112006433308124542236328125p895 | == 1.3681805969469451600417642112006433308124542236328125p895
; [HW: 1.3681805969469451600417642112006433308124542236328125p895] 

; mpf : + 1658137999215309 895
; mpfd: + 1658137999215309 895 (3.61401e+269) class: Pos. norm. non-zero
; hwf : + 1658137999215309 895 (3.61401e+269) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111110 #b0101111001000001000101010110011011101000101011001101)))
(assert (= r (fp #b0 #b11101111110 #b0101111001000001000101010110011011101000101011001101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

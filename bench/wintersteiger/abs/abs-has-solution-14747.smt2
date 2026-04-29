(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6620464190277031146791841820231638848781585693359375p653 {- 2981592006035135 653 (-6.21198e+196)}
; -1.6620464190277031146791841820231638848781585693359375p653 | == 1.6620464190277031146791841820231638848781585693359375p653
; [HW: 1.6620464190277031146791841820231638848781585693359375p653] 

; mpf : + 2981592006035135 653
; mpfd: + 2981592006035135 653 (6.21198e+196) class: Pos. norm. non-zero
; hwf : + 2981592006035135 653 (6.21198e+196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010001100 #b1010100101111011110111111100011000101000011010111111)))
(assert (= r (fp #b0 #b11010001100 #b1010100101111011110111111100011000101000011010111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

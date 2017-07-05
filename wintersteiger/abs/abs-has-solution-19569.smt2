(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.549117561165832324121538476902060210704803466796875p-837 {- 2473005643849038 -837 (-1.69036e-252)}
; -1.549117561165832324121538476902060210704803466796875p-837 | == 1.549117561165832324121538476902060210704803466796875p-837
; [HW: 1.549117561165832324121538476902060210704803466796875p-837] 

; mpf : + 2473005643849038 -837
; mpfd: + 2473005643849038 -837 (1.69036e-252) class: Pos. norm. non-zero
; hwf : + 2473005643849038 -837 (1.69036e-252) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111010 #b1000110010010010111101111110111011011101110101001110)))
(assert (= r (fp #b0 #b00010111010 #b1000110010010010111101111110111011011101110101001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

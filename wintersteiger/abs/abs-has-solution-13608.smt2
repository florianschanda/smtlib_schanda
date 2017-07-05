(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.191935866186466963512202710262499749660491943359375p705 {- 864402295436406 705 (-2.00632e+212)}
; -1.191935866186466963512202710262499749660491943359375p705 | == 1.191935866186466963512202710262499749660491943359375p705
; [HW: 1.191935866186466963512202710262499749660491943359375p705] 

; mpf : + 864402295436406 705
; mpfd: + 864402295436406 705 (2.00632e+212) class: Pos. norm. non-zero
; hwf : + 864402295436406 705 (2.00632e+212) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011000000 #b0011000100100010101101010111110000110011010001110110)))
(assert (= r (fp #b0 #b11011000000 #b0011000100100010101101010111110000110011010001110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

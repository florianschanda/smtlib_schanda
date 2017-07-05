(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.607186584078901692151930546970106661319732666015625 780 {- 2734525273802106 780 (-1.02203e+235)}
; -1.607186584078901692151930546970106661319732666015625 780 I == -1.607186584078901692151930546970106661319732666015625 780
; [HW: -1.607186584078901692151930546970106661319732666015625 780] 

; mpf : - 2734525273802106 780
; mpfd: - 2734525273802106 780 (-1.02203e+235) class: Neg. norm. non-zero
; hwf : - 2734525273802106 780 (-1.02203e+235) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001011 #b1001101101110000100101000111100100110000010101111010)))
(assert (= r (fp #b1 #b11100001011 #b1001101101110000100101000111100100110000010101111010)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

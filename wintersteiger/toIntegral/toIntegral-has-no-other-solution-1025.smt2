(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4894363777285366534641752878087572753429412841796875 313 {+ 2204225488359803 313 (2.48548e+094)}
; 1.4894363777285366534641752878087572753429412841796875 313 I == 1.4894363777285366534641752878087572753429412841796875 313
; [HW: 1.4894363777285366534641752878087572753429412841796875 313] 

; mpf : + 2204225488359803 313
; mpfd: + 2204225488359803 313 (2.48548e+094) class: Pos. norm. non-zero
; hwf : + 2204225488359803 313 (2.48548e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111000 #b0111110101001011101100111101001111010001000101111011)))
(assert (= r (fp #b0 #b10100111000 #b0111110101001011101100111101001111010001000101111011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4258188886475091639027823475771583616733551025390625 390 {+ 1917717788240241 390 (3.59553e+117)}
; 1.4258188886475091639027823475771583616733551025390625 390 I == 1.4258188886475091639027823475771583616733551025390625 390
; [HW: 1.4258188886475091639027823475771583616733551025390625 390] 

; mpf : + 1917717788240241 390
; mpfd: + 1917717788240241 390 (3.59553e+117) class: Pos. norm. non-zero
; hwf : + 1917717788240241 390 (3.59553e+117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000101 #b0110110100000010011101110111100011000010100101110001)))
(assert (= r (fp #b0 #b10110000101 #b0110110100000010011101110111100011000010100101110001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

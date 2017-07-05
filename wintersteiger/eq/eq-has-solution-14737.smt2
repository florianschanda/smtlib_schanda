(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.96380138576674045935988033306784927845001220703125p-682 {+ 4340575561798260 -682 (9.7868e-206)}
; Y = +zero {+ 0 -1023 (0)}
; 1.96380138576674045935988033306784927845001220703125p-682 = +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010101 #b1111011010111011101100000000011110110101001001110100)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0132550792543266737766316509805619716644287109375p-301 {- 59695569990552 -301 (-2.48708e-091)}
; Y = 1.166723153134310297929232547176070511341094970703125p219 {+ 750854330329714 219 (9.82962e+065)}
; -1.0132550792543266737766316509805619716644287109375p-301 = 1.166723153134310297929232547176070511341094970703125p219 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011010010 #b0000001101100100101011110101001111100111001110011000)))
(assert (= y (fp #b0 #b10011011010 #b0010101010101110010111100101101000110010101001110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

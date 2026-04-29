(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68210249671181788500007314723916351795196533203125p-552 {- 3071916550019828 -552 (-1.14102e-166)}
; Y = 1.038174413935273765474676110898144543170928955078125p-134 {+ 171922276373986 -134 (4.76706e-041)}
; -1.68210249671181788500007314723916351795196533203125p-552 = 1.038174413935273765474676110898144543170928955078125p-134 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010111 #b1010111010011110010001001110101111100101101011110100)))
(assert (= y (fp #b0 #b01101111001 #b0000100111000101110011000110001101100101010111100010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

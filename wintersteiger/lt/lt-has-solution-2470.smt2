(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.39028789541088659831302720704115927219390869140625p-660 {- 1757700420339684 -660 (-2.90608e-199)}
; Y = -1.522663773984240354053554256097413599491119384765625p743 {- 2353868377755482 743 (-7.04516e+223)}
; -1.39028789541088659831302720704115927219390869140625p-660 < -1.522663773984240354053554256097413599491119384765625p743 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101101011 #b0110001111101001111010000101001011010000011111100100)))
(assert (= y (fp #b1 #b11011100110 #b1000010111001101010010110000100000010000111101011010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8084159207747223518936152686364948749542236328125p109 {- 3640781639561416 109 (-1.17373e+033)}
; Y = 1.119590824834399089837688734405674040317535400390625p620 {+ 538589194161130 620 (4.87143e+186)}
; -1.8084159207747223518936152686364948749542236328125p109 = 1.119590824834399089837688734405674040317535400390625p620 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001101100 #b1100111011110100010110001000010101001011000011001000)))
(assert (= y (fp #b0 #b11001101011 #b0001111010011101100000010001100110010000101111101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

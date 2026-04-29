(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3465914493035231469519885649788193404674530029296875p-430 {- 1560909121933147 -430 (-4.85666e-130)}
; Y = 1.24436629089262851266539655625820159912109375p620 {+ 1100527936605952 620 (5.41434e+186)}
; -1.3465914493035231469519885649788193404674530029296875p-430 > 1.24436629089262851266539655625820159912109375p620 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001010001 #b0101100010111010001101111001101111010100111101011011)))
(assert (= y (fp #b0 #b11001101011 #b0011111010001110110010100000101110100000111100000000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

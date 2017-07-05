(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1904614821803891633322791676619090139865875244140625p-347 {- 857762260176033 -347 (-4.15247e-105)}
; Y = -1.35669614831357421280699782073497772216796875p-346 {- 1606416640629504 -346 (-9.46464e-105)}
; -1.1904614821803891633322791676619090139865875244140625p-347 > -1.35669614831357421280699782073497772216796875p-346 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100100 #b0011000011000010000101010110110100011100110010100001)))
(assert (= y (fp #b1 #b01010100101 #b0101101101010000011100000101001110011101101100000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

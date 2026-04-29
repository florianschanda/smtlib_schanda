(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.1602376628327994989575699946726672351360321044921875p-594 {+ 721646278624515 -594 (1.78949e-179)}
; -zero < 1.1602376628327994989575699946726672351360321044921875p-594 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b00110101101 #b0010100100000101010101011110000101110100010100000011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

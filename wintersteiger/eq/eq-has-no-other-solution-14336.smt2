(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2155195975202612856946871033869683742523193359375p-387 {- 970613979083288 -387 (-3.85615e-117)}
; Y = 1.3005167700308699618716445911559276282787322998046875p478 {+ 1353407213529611 478 (1.01497e+144)}
; -1.2155195975202612856946871033869683742523193359375p-387 = 1.3005167700308699618716445911559276282787322998046875p478 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001111100 #b0011011100101100010010101101011011111111001000011000)))
(assert (= y (fp #b0 #b10111011101 #b0100110011101110101010101100001100101110101000001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

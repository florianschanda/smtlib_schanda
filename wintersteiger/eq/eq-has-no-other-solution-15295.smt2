(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5392226505606949604754163374309428036212921142578125p-100 {- 2428442928134877 -100 (-1.21423e-030)}
; Y = -1.0545952954332535878023691111593507230281829833984375p179 {- 245875352169383 179 (-8.08081e+053)}
; -1.5392226505606949604754163374309428036212921142578125p-100 = -1.0545952954332535878023691111593507230281829833984375p179 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110011011 #b1000101000001010011111101110000101101011101011011101)))
(assert (= y (fp #b1 #b10010110010 #b0000110111111001111101010001000001100110101110100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7794113189923874696063421652070246636867523193359375p-729 {- 3510156525782463 -729 (-6.301e-220)}
; Y = -1.8778705044726418105227594423922710120677947998046875p-911 {- 3953577276822539 -911 (-1.08477e-274)}
; -1.7794113189923874696063421652070246636867523193359375p-729 < -1.8778705044726418105227594423922710120677947998046875p-911 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100110 #b1100011110000111100000000000110100110100010110111111)))
(assert (= y (fp #b1 #b00001110000 #b1110000010111100000111110001001011010101010000001011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

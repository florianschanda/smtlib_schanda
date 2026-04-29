(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.547386516829861502486664903699420392513275146484375p-944 {- 2465209713222598 -944 (-1.0406e-284)}
; Y = 1.3214245504238497641580352137680165469646453857421875p-244 {+ 1447567485516579 -244 (4.67437e-074)}
; -1.547386516829861502486664903699420392513275146484375p-944 * 1.3214245504238497641580352137680165469646453857421875p-244 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001001111 #b1000110000100001100001011101010000001110001111000110)))
(assert (= y (fp #b0 #b01100001011 #b0101001001001000111000010001110000110011101100100011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)

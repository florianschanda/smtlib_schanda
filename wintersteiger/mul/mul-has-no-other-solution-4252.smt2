(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3050977073885914325757084952783770859241485595703125p191 {- 1374037921306853 191 (-4.09612e+057)}
; Y = 1.70669713262708455658867023885250091552734375p-702 {+ 3182680943163136 -702 (8.11147e-212)}
; -1.3050977073885914325757084952783770859241485595703125p191 * 1.70669713262708455658867023885250091552734375p-702 == -1.1137032574991454492163711620378307998180389404296875p-510
; [HW: -1.1137032574991454492163711620378307998180389404296875p-510] 

; mpf : - 512073948103963 -510
; mpfd: - 512073948103963 -510 (-3.32255e-154) class: Neg. norm. non-zero
; hwf : - 512073948103963 -510 (-3.32255e-154) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010111110 #b0100111000011010111000100010001101010001100011100101)))
(assert (= y (fp #b0 #b00101000001 #b1011010011101010000110100111000011001111011100000000)))
(assert (= r (fp #b1 #b01000000001 #b0001110100011011101010000001110001101000010100011011)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

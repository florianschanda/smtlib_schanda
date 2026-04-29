(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0338434631714346068065424333326518535614013671875p-694 {+ 152417408127800 -694 (1.25788e-209)}
; Y = -1.6381961888558709272700752990203909575939178466796875p-515 {- 2874180118320571 -515 (-1.52728e-155)}
; 1.0338434631714346068065424333326518535614013671875p-694 * -1.6381961888558709272700752990203909575939178466796875p-515 == -zero
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
(assert (= x (fp #b0 #b00101001001 #b0000100010101001111101110001011110000001001100111000)))
(assert (= y (fp #b1 #b00111111100 #b1010001101100000110100110100111110010001010110111011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)

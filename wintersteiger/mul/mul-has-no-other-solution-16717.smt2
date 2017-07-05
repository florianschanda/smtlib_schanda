(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.471028622868411073199013117118738591670989990234375p-89 {- 2121324330431014 -89 (-2.37657e-027)}
; Y = -1.3885593636656550220465078382403589785099029541015625p-973 {- 1749915805415961 -973 (-1.73932e-293)}
; -1.471028622868411073199013117118738591670989990234375p-89 * -1.3885593636656550220465078382403589785099029541015625p-973 == 0.000000000001857625164802811923436820507049560546875p-1022
; [HW: 0.000000000001857625164802811923436820507049560546875p-1022] 

; mpf : + 8366 -1023
; mpfd: + 8366 -1023 (4.13335e-320) class: Pos. denorm.
; hwf : + 8366 -1023 (4.13335e-320) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110100110 #b0111100010010101010101001111001010110011001000100110)))
(assert (= y (fp #b1 #b00000110010 #b0110001101111000101000000101111101111111101000011001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000010000010101110)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)

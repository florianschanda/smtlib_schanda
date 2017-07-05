(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.250455141445322215787427921895869076251983642578125p-268 {- 1127949681686178 -268 (-2.63651e-081)}
; Y = -1.5250800219325697515415640737046487629413604736328125p-758 {- 2364750191115213 -758 (-1.0059e-228)}
; -1.250455141445322215787427921895869076251983642578125p-268 * -1.5250800219325697515415640737046487629413604736328125p-758 == 0.1191902596588205742733634906471706926822662353515625p-1022
; [HW: 0.1191902596588205742733634906471706926822662353515625p-1022] 

; mpf : + 536785208985657 -1023
; mpfd: + 536785208985657 -1023 (2.65207e-309) class: Pos. denorm.
; hwf : + 536785208985657 -1023 (2.65207e-309) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011110011 #b0100000000011101110101000000000110011111011010100010)))
(assert (= y (fp #b1 #b00100001001 #b1000011001101011101001001111000111111011101111001101)))
(assert (= r (fp #b0 #b00000000000 #b0001111010000011010000001011101100111100100000111001)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)

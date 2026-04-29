(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8891775626014164490840130383730866014957427978515625p-891 {- 4004499739597945 -891 (-1.14432e-268)}
; Y = -1.2621165358129886602256419791956432163715362548828125p-496 {- 1180467933015021 -496 (-6.1691e-150)}
; -1.8891775626014164490840130383730866014957427978515625p-891 > -1.2621165358129886602256419791956432163715362548828125p-496 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000100 #b1110001110100001001001000000011110110101110001111001)))
(assert (= y (fp #b1 #b01000001111 #b0100001100011010000100011011110100001110101111101101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

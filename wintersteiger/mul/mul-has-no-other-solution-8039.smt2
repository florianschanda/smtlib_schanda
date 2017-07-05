(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6965446142120257366769919826765544712543487548828125p479 {- 3136958065012205 479 (-2.64809e+144)}
; Y = 1.286759225062578337883678614161908626556396484375p-915 {+ 1291448739136880 -915 (4.6457e-276)}
; -1.6965446142120257366769919826765544712543487548828125p479 * 1.286759225062578337883678614161908626556396484375p-915 == -1.0915222165337785664718239786452613770961761474609375p-435
; [HW: -1.0915222165337785664718239786452613770961761474609375p-435] 

; mpf : - 412179420277647 -435
; mpfd: - 412179420277647 -435 (-1.23022e-131) class: Neg. norm. non-zero
; hwf : - 412179420277647 -435 (-1.23022e-131) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111011110 #b1011001001010000101111110111001000111110110111101101)))
(assert (= y (fp #b0 #b00001101100 #b0100100101101001000011010111010101111000010101110000)))
(assert (= r (fp #b1 #b01001001100 #b0001011101101101111111111111111011011110101110001111)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)

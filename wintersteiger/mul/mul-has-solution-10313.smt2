(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.415020301177857486862876612576656043529510498046875p-174 {+ 1869085273735790 -174 (5.9094e-053)}
; Y = 1.4029777421870466280751088561373762786388397216796875p-988 {+ 1814850409552187 -988 (5.36309e-298)}
; 1.415020301177857486862876612576656043529510498046875p-174 * 1.4029777421870466280751088561373762786388397216796875p-988 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101010001 #b0110101000111110110001010011110010111100001001101110)))
(assert (= y (fp #b0 #b00000100011 #b0110011100101001100011001001111110110101100100111011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)

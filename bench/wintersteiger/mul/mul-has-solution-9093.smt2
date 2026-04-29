(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.380857240101554861411159436102025210857391357421875p-807 {+ 1715228524602718 -807 (1.61787e-243)}
; Y = -1.798591649443661122376170169445686042308807373046875p-346 {- 3596537054855662 -346 (-1.25474e-104)}
; 1.380857240101554861411159436102025210857391357421875p-807 * -1.798591649443661122376170169445686042308807373046875p-346 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011011000 #b0110000101111111110111000010111010101110010101011110)))
(assert (= y (fp #b1 #b01010100101 #b1100110001110000100000001001100100111000000111101110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)

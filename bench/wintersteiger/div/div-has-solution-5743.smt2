(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4238741790307101187096350258798338472843170166015625p-790 {- 1908959594734681 -790 (-2.18663e-238)}
; Y = 1.846880364026248333431112769176252186298370361328125p319 {+ 3814010091856002 319 (1.97246e+096)}
; -1.4238741790307101187096350258798338472843170166015625p-790 / 1.846880364026248333431112769176252186298370361328125p319 == -zero
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
(assert (= x (fp #b1 #b00011101001 #b0110110010000011000001001010100010001110010001011001)))
(assert (= y (fp #b0 #b10100111110 #b1101100011001101001001101100101100011110000010000010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)

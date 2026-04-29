(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.458886698203546217200710088945925235748291015625p-679 {+ 2066641963034768 -679 (5.8164e-205)}
; Y = 1.9028625814079680456103460528538562357425689697265625p-413 {+ 4066131585195689 -413 (8.99537e-125)}
; 1.458886698203546217200710088945925235748291015625p-679 * 1.9028625814079680456103460528538562357425689697265625p-413 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011000 #b0111010101111001100110010100000101011010100010010000)))
(assert (= y (fp #b0 #b01001100010 #b1110011100100010000000001000101111101101111010101001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)

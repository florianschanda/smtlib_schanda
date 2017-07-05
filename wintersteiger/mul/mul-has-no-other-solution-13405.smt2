(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3923107524535101031659678483265452086925506591796875p-778 {- 1766810558563067 -778 (-8.75789e-235)}
; Y = 1.9393297095870936086470237569301389157772064208984375p-575 {+ 4230364930074471 -575 (1.56821e-173)}
; -1.3923107524535101031659678483265452086925506591796875p-778 * 1.9393297095870936086470237569301389157772064208984375p-575 == -zero
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
(assert (= x (fp #b1 #b00011110101 #b0110010001101110011110100011101110101000001011111011)))
(assert (= y (fp #b0 #b00111000000 #b1111000001110111111010010110111011010110011101100111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)

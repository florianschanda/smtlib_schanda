(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.200265998035227266171887094969861209392547607421875p-197 {+ 901917874126430 -197 (5.97542e-060)}
; Y = -1.861196923758624333089528590789996087551116943359375p287 {- 3878486144931958 287 (-4.62808e+086)}
; 1.200265998035227266171887094969861209392547607421875p-197 * -1.861196923758624333089528590789996087551116943359375p287 == -1.116965691617620048958769984892569482326507568359375p91
; [HW: -1.116965691617620048958769984892569482326507568359375p91] 

; mpf : - 526766645184246 91
; mpfd: - 526766645184246 91 (-2.76547e+027) class: Neg. norm. non-zero
; hwf : - 526766645184246 91 (-2.76547e+027) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100111010 #b0011001101000100101000011110100000001111111001011110)))
(assert (= y (fp #b1 #b10100011110 #b1101110001110111011001101100111011110101100001110110)))
(assert (= r (fp #b1 #b10001011010 #b0001110111110001011101101010110001000000011011110110)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

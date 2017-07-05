(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5948889143274864732546802770229987800121307373046875p-562 {+ 2679141492892107 -562 (1.05651e-169)}
; Y = -1.6169829509086921515148560501984320580959320068359375p-891 {- 2778644187806335 -891 (-9.79443e-269)}
; 1.5948889143274864732546802770229987800121307373046875p-562 * -1.6169829509086921515148560501984320580959320068359375p-891 == -zero
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
(assert (= x (fp #b0 #b00111001101 #b1001100001001010101000111100111111001010000111001011)))
(assert (= y (fp #b1 #b00010000100 #b1001110111110010100110000011110001010111101001111111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)

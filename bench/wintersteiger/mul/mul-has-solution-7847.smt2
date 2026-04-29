(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4891792515516144579379442802746780216693878173828125p-887 {+ 2203067495005229 -887 (1.44325e-267)}
; Y = -1.9809932716990321655003981504705734550952911376953125p-239 {- 4418000932876725 -239 (-2.2424e-072)}
; 1.4891792515516144579379442802746780216693878173828125p-887 * -1.9809932716990321655003981504705734550952911376953125p-239 == -zero
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
(assert (= x (fp #b0 #b00010001000 #b0111110100111010110110011111011101001011110000101101)))
(assert (= y (fp #b1 #b01100010000 #b1111101100100010011000000000001110001011000110110101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)

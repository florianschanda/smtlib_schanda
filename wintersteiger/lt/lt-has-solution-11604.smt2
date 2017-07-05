(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2718158064380220562128442907123826444149017333984375p-820 {+ 1224149564587687 -820 (1.81898e-247)}
; Y = -1.213507120239338377132298774085938930511474609375p-25 {- 961550587150832 -25 (-3.61653e-008)}
; 1.2718158064380220562128442907123826444149017333984375p-820 < -1.213507120239338377132298774085938930511474609375p-25 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011001011 #b0100010110010101101110000111111100101111111010100111)))
(assert (= y (fp #b1 #b01111100110 #b0011011010101000011001110001001011100100000111110000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4039427405476991861377200621063821017742156982421875p327 {+ 1819196375809635 327 (3.83847e+098)}
; Y = -1.86199714142853078868711236282251775264739990234375p-440 {- 3882090004931964 -440 (-6.55814e-133)}
; 1.4039427405476991861377200621063821017742156982421875p327 > -1.86199714142853078868711236282251775264739990234375p-440 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000110 #b0110011101101000110010101001110000011011111001100011)))
(assert (= y (fp #b1 #b01001000111 #b1101110010101011110110000011101110101110010101111100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.686234310688782489506820638780482113361358642578125p-708 {- 3090524585906850 -708 (-1.25222e-213)}
; Y = -1.747023003051904499471902454388327896595001220703125p-952 {- 3364292518181746 -952 (-4.58926e-287)}
; -1.686234310688782489506820638780482113361358642578125p-708 - -1.747023003051904499471902454388327896595001220703125p-952 == -1.6862343106887822674622157137491740286350250244140625p-708
; [HW: -1.6862343106887822674622157137491740286350250244140625p-708] 

; mpf : - 3090524585906849 -708
; mpfd: - 3090524585906849 -708 (-1.25222e-213) class: Neg. norm. non-zero
; hwf : - 3090524585906849 -708 (-1.25222e-213) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111011 #b1010111110101101000011010100000111001101001010100010)))
(assert (= y (fp #b1 #b00001000111 #b1011111100111100111001100100011101110111101101110010)))
(assert (= r (fp #b1 #b00100111011 #b1010111110101101000011010100000111001101001010100001)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)

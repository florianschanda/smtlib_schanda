(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0975751303231362498991074971854686737060546875p-393 {+ 439439320563904 -393 (5.44059e-119)}
; Y = -0.7342327924195213295632811423274688422679901123046875p-1022 {- 3306690530343755 -1023 (-1.63372e-308)}
; 1.0975751303231362498991074971854686737060546875p-393 > -0.7342327924195213295632811423274688422679901123046875p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001110110 #b0001100011111010101011110000100110100100000011000000)))
(assert (= y (fp #b1 #b00000000000 #b1011101111110110101011100010011100010111101101001011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

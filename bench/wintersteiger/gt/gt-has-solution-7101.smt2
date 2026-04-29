(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1988597510620058184116487609571777284145355224609375p760 {- 895584700781839 760 (-7.27051e+228)}
; Y = 1.7184767440746926414618656053789891302585601806640625p-954 {+ 3235731596889153 -954 (1.12857e-287)}
; -1.1988597510620058184116487609571777284145355224609375p760 > 1.7184767440746926414618656053789891302585601806640625p-954 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110111 #b0011001011101000011110001111111101001101010100001111)))
(assert (= y (fp #b0 #b00001000101 #b1011011111101110000101111000011010111100110001000001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

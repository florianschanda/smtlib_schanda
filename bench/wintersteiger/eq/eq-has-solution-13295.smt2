(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.79345724455020860688136963290162384510040283203125p115 {- 3573413750890740 115 (-7.44973e+034)}
; Y = 1.4709776550759146029889734563766978681087493896484375p-622 {+ 2121094791899719 -622 (8.45179e-188)}
; -1.79345724455020860688136963290162384510040283203125p115 = 1.4709776550759146029889734563766978681087493896484375p-622 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001110010 #b1100101100100000000000111001010000011110000011110100)))
(assert (= y (fp #b0 #b00110010001 #b0111100010010001111111011101100110110010101001000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

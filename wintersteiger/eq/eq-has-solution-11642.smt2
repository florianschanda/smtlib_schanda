(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9681659116609411253051575840800069272518157958984375p-554 {+ 4360231638989031 -554 (3.33768e-167)}
; Y = +zero {+ 0 -1023 (0)}
; 1.9681659116609411253051575840800069272518157958984375p-554 = +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010101 #b1111011111011001101110001001111110101111100011100111)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

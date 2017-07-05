(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0250417673323315437272640338051132857799530029296875p796 {+ 112778094026587 796 (4.27187e+239)}
; Y = -1.5006021172752854742071804139413870871067047119140625p755 {- 2254511508821857 755 (-2.84389e+227)}
; 1.0250417673323315437272640338051132857799530029296875p796 > -1.5006021172752854742071804139413870871067047119140625p755 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011011 #b0000011001101001001000110010001110111001111101011011)))
(assert (= y (fp #b1 #b11011110010 #b1000000000100111011101011101101000000001011101100001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

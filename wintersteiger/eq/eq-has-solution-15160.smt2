(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.715826742231175483510696722078137099742889404296875p-295 {+ 3223797049574158 -295 (2.69541e-089)}
; Y = 1.48856472104183357174633783870376646518707275390625p467 {+ 2200299895630372 467 (5.67252e+140)}
; 1.715826742231175483510696722078137099742889404296875p-295 = 1.48856472104183357174633783870376646518707275390625p467 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011011000 #b1011011101000000011010111101111101111100001100001110)))
(assert (= y (fp #b0 #b10111010010 #b0111110100010010100100111101101011011010101000100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

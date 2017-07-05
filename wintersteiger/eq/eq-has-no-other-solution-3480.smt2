(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0153198358531951850380892210523597896099090576171875p189 {+ 68994407039827 189 (7.96658e+056)}
; Y = 1.440995681271366901654573666746728122234344482421875p350 {+ 1986067985845726 350 (3.30492e+105)}
; 1.0153198358531951850380892210523597896099090576171875p189 = 1.440995681271366901654573666746728122234344482421875p350 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010111100 #b0000001111101100000000000011000111111000001101010011)))
(assert (= y (fp #b0 #b10101011101 #b0111000011100101000101111100110010111100110111011110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

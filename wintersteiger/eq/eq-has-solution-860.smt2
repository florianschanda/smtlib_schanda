(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5757720285100360602115188157767988741397857666015625p-719 {+ 2593046693048153 -719 (5.71382e-217)}
; Y = -1.3984566448765931578890331365983001887798309326171875p-915 {- 1794489197389523 -915 (-5.04897e-276)}
; 1.5757720285100360602115188157767988741397857666015625p-719 = -1.3984566448765931578890331365983001887798309326171875p-915 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100110000 #b1001001101100101110010111011000001100110111101011001)))
(assert (= y (fp #b1 #b00001101100 #b0110011000000001010000010011001010011110011011010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

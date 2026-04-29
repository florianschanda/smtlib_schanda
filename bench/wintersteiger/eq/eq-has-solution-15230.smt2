(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.073392802047306471280307960114441812038421630859375p967 {+ 330531795951926 967 (1.33895e+291)}
; Y = -1.343305626695317389618367087678052484989166259765625p-194 {- 1546111092459226 -194 (-5.35002e-059)}
; 1.073392802047306471280307960114441812038421630859375p967 = -1.343305626695317389618367087678052484989166259765625p-194 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111000110 #b0001001011001001110111101110010010001110000100110110)))
(assert (= y (fp #b1 #b01100111101 #b0101011111100010111000001010011100110000011011011010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4666923533758209341471001607715152204036712646484375p730 {- 2101795508760007 730 (-8.28392e+219)}
; Y = 1.8533863339788403390429039063747040927410125732421875p-417 {+ 3843310375710179 -417 (5.47593e-126)}
; -1.4666923533758209341471001607715152204036712646484375p730 < 1.8533863339788403390429039063747040927410125732421875p-417 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011011001 #b0111011101111001001001100110101100001010110111000111)))
(assert (= y (fp #b0 #b01001011110 #b1101101001110111100001101101101101001010110111100011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

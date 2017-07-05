(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3893420577333672749631432452588342130184173583984375p281 {- 1753440746127655 281 (-5.39806e+084)}
; Y = -1.5365452861486090796461212448775768280029296875p716 {- 2416385150766272 716 (-5.29691e+215)}
; -1.3893420577333672749631432452588342130184173583984375p281 = -1.5365452861486090796461212448775768280029296875p716 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011000 #b0110001110101011111010111100110011101100000100100111)))
(assert (= y (fp #b1 #b11011001011 #b1000100101011011000010000010100011010100110011000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

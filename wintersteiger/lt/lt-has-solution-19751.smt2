(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.091968682146371438790311003685928881168365478515625p839 {- 414190122644154 839 (-4.00292e+252)}
; Y = 1.653069403993910224670571551541797816753387451171875p994 {+ 2941163124474046 994 (2.76762e+299)}
; -1.091968682146371438790311003685928881168365478515625p839 < 1.653069403993910224670571551541797816753387451171875p994 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101000110 #b0001011110001011010000100111001000010011001010111010)))
(assert (= y (fp #b0 #b11111100001 #b1010011100101111100011100111010000101100000010111110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

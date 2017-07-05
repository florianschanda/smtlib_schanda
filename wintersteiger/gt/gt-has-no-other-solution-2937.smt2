(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7723747357174561845027938034036196768283843994140625p297 {- 3478466571967521 297 (-4.51299e+089)}
; Y = 1.2499494362889767007374075546977110207080841064453125p189 {+ 1125672188132501 189 (9.80757e+056)}
; -1.7723747357174561845027938034036196768283843994140625p297 > 1.2499494362889767007374075546977110207080841064453125p189 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100101000 #b1100010110111010010110011100011000101001110000100001)))
(assert (= y (fp #b0 #b10010111100 #b0011111111111100101011111010111010000011110010010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

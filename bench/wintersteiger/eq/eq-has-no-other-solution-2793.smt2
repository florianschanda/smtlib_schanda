(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.452466388781509021299598316545598208904266357421875p187 {- 2037727459914078 187 (-2.84915e+056)}
; Y = -1.4769288772914481722153823284315876662731170654296875p283 {- 2147896714051995 283 (-2.29535e+085)}
; -1.452466388781509021299598316545598208904266357421875p187 = -1.4769288772914481722153823284315876662731170654296875p283 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010111010 #b0111001111010100110101100101011001011011000101011110)))
(assert (= y (fp #b1 #b10100011010 #b0111101000011000000000101100101001111100000110011011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

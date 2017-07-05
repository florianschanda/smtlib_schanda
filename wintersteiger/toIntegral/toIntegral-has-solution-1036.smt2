(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5711489761764507733232676400803029537200927734375 546 {+ 2572226316281304 546 (3.61905e+164)}
; 1.5711489761764507733232676400803029537200927734375 546 I == 1.5711489761764507733232676400803029537200927734375 546
; [HW: 1.5711489761764507733232676400803029537200927734375 546] 

; mpf : + 2572226316281304 546
; mpfd: + 2572226316281304 546 (3.61905e+164) class: Pos. norm. non-zero
; hwf : + 2572226316281304 546 (3.61905e+164) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100001 #b1001001000110110110100011011110111010010010111011000)))
(assert (= r (fp #b0 #b11000100001 #b1001001000110110110100011011110111010010010111011000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.701807077324253736350101462448947131633758544921875 591 {- 3160658091923486 591 (-1.37923e+178)}
; -1.701807077324253736350101462448947131633758544921875 591 I == -1.701807077324253736350101462448947131633758544921875 591
; [HW: -1.701807077324253736350101462448947131633758544921875 591] 

; mpf : - 3160658091923486 591
; mpfd: - 3160658091923486 591 (-1.37923e+178) class: Neg. norm. non-zero
; hwf : - 3160658091923486 591 (-1.37923e+178) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001001110 #b1011001110101001101000001110110100110101100000011110)))
(assert (= r (fp #b1 #b11001001110 #b1011001110101001101000001110110100110101100000011110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

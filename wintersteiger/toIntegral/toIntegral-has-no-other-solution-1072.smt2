(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.630110786538239597831534410943277180194854736328125 674 {- 2837766703455746 674 (-1.27772e+203)}
; -1.630110786538239597831534410943277180194854736328125 674 I == -1.630110786538239597831534410943277180194854736328125 674
; [HW: -1.630110786538239597831534410943277180194854736328125 674] 

; mpf : - 2837766703455746 674
; mpfd: - 2837766703455746 674 (-1.27772e+203) class: Neg. norm. non-zero
; hwf : - 2837766703455746 674 (-1.27772e+203) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010100001 #b1010000101001110111100001100010100001001111000000010)))
(assert (= r (fp #b1 #b11010100001 #b1010000101001110111100001100010100001001111000000010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

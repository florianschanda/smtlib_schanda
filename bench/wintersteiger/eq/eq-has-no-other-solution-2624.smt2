(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4502618202983932338412387252901680767536163330078125p-323 {+ 2027798966115005 -323 (8.48707e-098)}
; Y = -1.0655116915866049698280448865261860191822052001953125p506 {- 295038429817845 506 (-2.23222e+152)}
; 1.4502618202983932338412387252901680767536163330078125p-323 = -1.0655116915866049698280448865261860191822052001953125p506 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010111100 #b0111001101000100010110111101000011010001101010111101)))
(assert (= y (fp #b1 #b10111111001 #b0001000011000101010111111100110011011110101111110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5959388538516396938149455309030599892139434814453125p507 {- 2683870000141845 507 (-6.68689e+152)}
; Y = 1.523168521670284381031024167896248400211334228515625p324 {+ 2356141559246266 324 (5.20555e+097)}
; -1.5959388538516396938149455309030599892139434814453125p507 m 1.523168521670284381031024167896248400211334228515625p324 == -1.5959388538516396938149455309030599892139434814453125p507
; [HW: -1.5959388538516396938149455309030599892139434814453125p507] 

; mpf : - 2683870000141845 507
; mpfd: - 2683870000141845 507 (-6.68689e+152) class: Neg. norm. non-zero
; hwf : - 2683870000141845 507 (-6.68689e+152) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111010 #b1001100010001111011100101101111110110101011000010101)))
(assert (= y (fp #b0 #b10101000011 #b1000010111101110010111110100101011011110110110111010)))
(assert (= r (fp #b1 #b10111111010 #b1001100010001111011100101101111110110101011000010101)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

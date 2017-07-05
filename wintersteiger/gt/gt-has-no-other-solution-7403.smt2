(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1277221751431325547088135863305069506168365478515625p406 {- 575209540381561 406 (-1.86372e+122)}
; Y = -1.773998343266536270590449930750764906406402587890625p425 {- 3485778650320554 425 (-1.5371e+128)}
; -1.1277221751431325547088135863305069506168365478515625p406 > -1.773998343266536270590449930750764906406402587890625p425 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010101 #b0010000010110010011001101000010100110110101101111001)))
(assert (= y (fp #b1 #b10110101000 #b1100011000100100110000010110001101111100111010101010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

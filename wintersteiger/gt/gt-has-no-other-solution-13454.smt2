(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.197089434978150013222375491750426590442657470703125p-162 {+ 887611905926258 -162 (2.0477e-049)}
; Y = 1.0466340902232487142242689515114761888980865478515625p-592 {+ 210021271352185 -592 (6.4571e-179)}
; 1.197089434978150013222375491750426590442657470703125p-162 > 1.0466340902232487142242689515114761888980865478515625p-592 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011101 #b0011001001110100011101000000010110011110010001110010)))
(assert (= y (fp #b0 #b00110101111 #b0000101111110000001101100011010001100011001101111001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

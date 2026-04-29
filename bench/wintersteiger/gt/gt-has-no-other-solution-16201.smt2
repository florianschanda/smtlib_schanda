(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1470485558848217966243510090862400829792022705078125p-367 {+ 662247821488253 -367 (3.81569e-111)}
; Y = -1.3439102960855227042458182040718384087085723876953125p-450 {- 1548834281299637 -450 (-4.62245e-136)}
; 1.1470485558848217966243510090862400829792022705078125p-367 > -1.3439102960855227042458182040718384087085723876953125p-450 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010000 #b0010010110100100111110010110001001110011000001111101)))
(assert (= y (fp #b1 #b01000111101 #b0101100000001010100000010101001001110001111010110101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7032398278889100406985335212084464728832244873046875p540 {- 3167110626832587 540 (-6.13018e+162)}
; Y = -1.1612972946888089342820649108034558594226837158203125p-149 {- 726418436256389 -149 (-1.62732e-045)}
; -1.7032398278889100406985335212084464728832244873046875p540 = -1.1612972946888089342820649108034558594226837158203125p-149 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000011011 #b1011010000000111100001100111111000000111000011001011)))
(assert (= y (fp #b1 #b01101101010 #b0010100101001010110001111000110110011111001010000101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

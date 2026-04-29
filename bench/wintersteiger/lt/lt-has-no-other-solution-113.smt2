(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.436181639019043387861529481597244739532470703125p-863 {+ 1964387466952016 -863 (2.33519e-260)}
; Y = 1.403073702258861299441150549682788550853729248046875p-673 {+ 1815282575295854 -673 (3.58009e-203)}
; 1.436181639019043387861529481597244739532470703125p-863 < 1.403073702258861299441150549682788550853729248046875p-673 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010100000 #b0110111110101001100110011001001010110011110101010000)))
(assert (= y (fp #b0 #b00101011110 #b0110011100101111110101101001000100010100010101101110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

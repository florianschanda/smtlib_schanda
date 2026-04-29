(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1831845483185381429080962334410287439823150634765625p785 {- 824989863547401 785 (-2.40768e+236)}
; Y = -1.1637978128482855399994377876282669603824615478515625p-746 {- 737679768907641 -746 (-3.14413e-225)}
; -1.1831845483185381429080962334410287439823150634765625p785 > -1.1637978128482855399994377876282669603824615478515625p-746 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100010000 #b0010111011100101001011101011110000101001001000001001)))
(assert (= y (fp #b1 #b00100010101 #b0010100111101110101001110100100101010110111101111001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

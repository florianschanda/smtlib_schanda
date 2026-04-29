(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6479775825273519362923480002791620790958404541015625p14 {- 2918231599214617 14 (-27000.5)}
; Y = -1.2005920501486027074378171164426021277904510498046875p-313 {- 903386282302731 -313 (-7.1946e-095)}
; -1.6479775825273519362923480002791620790958404541015625p14 > -1.2005920501486027074378171164426021277904510498046875p-313 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001101 #b1010010111100001110110111101110101111111000000011001)))
(assert (= y (fp #b1 #b01011000110 #b0011001101011010000000000010011100111001110100001011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

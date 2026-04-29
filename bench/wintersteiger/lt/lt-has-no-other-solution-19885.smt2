(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3711000086162001831979750932077877223491668701171875p280 {+ 1671285860521107 280 (2.66359e+084)}
; Y = -1.4013471257979575046448417197098024189472198486328125p414 {- 1807506766189901 414 (-5.92876e+124)}
; 1.3711000086162001831979750932077877223491668701171875p280 < -1.4013471257979575046448417197098024189472198486328125p414 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010111 #b0101111100000000011010010000000010001101010010010011)))
(assert (= y (fp #b1 #b10110011101 #b0110011010111110101011110110101110100101010101001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

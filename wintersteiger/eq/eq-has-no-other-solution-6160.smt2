(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8745150751364452190728115965612232685089111328125p-585 {- 3938465766514376 -585 (-1.48027e-176)}
; Y = -1.738133136711879078717402080656029284000396728515625p54 {- 3324256119445434 54 (-3.13114e+016)}
; -1.8745150751364452190728115965612232685089111328125p-585 = -1.738133136711879078717402080656029284000396728515625p54 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110110110 #b1101111111100000001110000100111110010001111011001000)))
(assert (= y (fp #b1 #b10000110101 #b1011110011110110010010110001001001000101011110111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

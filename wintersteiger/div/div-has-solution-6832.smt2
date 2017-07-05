(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3998735442096343906115407662582583725452423095703125p-819 {- 1800870344697829 -819 (-4.00426e-247)}
; Y = 1.6054321692790687325924636752461083233356475830078125p366 {+ 2726624091963325 366 (2.41307e+110)}
; -1.3998735442096343906115407662582583725452423095703125p-819 / 1.6054321692790687325924636752461083233356475830078125p366 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011001100 #b0110011001011110000111001101001011101010011111100101)))
(assert (= y (fp #b0 #b10101101101 #b1001101011111101100110100100011011111111111110111101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)

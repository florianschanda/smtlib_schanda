(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.440841952707873740990862643229775130748748779296875p-678 {- 1985375653944462 -678 (-1.14889e-204)}
; Y = 1.939143015424655391854003028129227459430694580078125p843 {+ 4229524134314082 843 (1.13736e+254)}
; -1.440841952707873740990862643229775130748748779296875p-678 / 1.939143015424655391854003028129227459430694580078125p843 == -zero
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
(assert (= x (fp #b1 #b00101011001 #b0111000011011011000001001010100110010101110010001110)))
(assert (= y (fp #b0 #b11101001010 #b1111000001101011101011010011100110000100000001100010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

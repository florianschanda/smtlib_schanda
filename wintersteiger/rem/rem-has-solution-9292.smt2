(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -0.475683451659349554319078379194252192974090576171875p-1022 {- 2142287815639358 -1023 (-1.05843e-308)}
; Y = 1.4270251653651566670077954768203198909759521484375p-558 {+ 1923150375616344 -558 (1.5125e-168)}
; -0.475683451659349554319078379194252192974090576171875p-1022 % 1.4270251653651566670077954768203198909759521484375p-558 == -0.475683451659349554319078379194252192974090576171875p-1022
; [HW: -0.475683451659349554319078379194252192974090576171875p-1022] 

; mpf : - 2142287815639358 -1023
; mpfd: - 2142287815639358 -1023 (-1.05843e-308) class: Neg. denorm.
; hwf : - 2142287815639358 -1023 (-1.05843e-308) class: Neg. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0111100111000110011001000000010000100000000100111110)))
(assert (= y (fp #b0 #b00111010001 #b0110110101010001100001010110111111001111111101011000)))
(assert (= r (fp #b1 #b00000000000 #x79c664042013e)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)

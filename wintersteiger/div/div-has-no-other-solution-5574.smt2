(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.290903834628729374145450492505915462970733642578125p-1013 {+ 1310114401234594 -1013 (1.47065e-305)}
; Y = 1.4177116931617910200458254621480591595172882080078125p325 {+ 1881206225671741 325 (9.69028e+097)}
; 1.290903834628729374145450492505915462970733642578125p-1013 / 1.4177116931617910200458254621480591595172882080078125p325 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000001010 #b0100101001111000101011000111100000000010111010100010)))
(assert (= y (fp #b0 #b10101000100 #b0110101011101111001001110100110101001001011000111101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)

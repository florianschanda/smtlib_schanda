(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4611739523481077629440960663487203419208526611328125p938 {- 2076942839947917 938 (-3.39498e+282)}
; Y = 1.03131093378743532440466879052110016345977783203125p775 {+ 141011909737716 775 (2.04944e+233)}
; -1.4611739523481077629440960663487203419208526611328125p938 = 1.03131093378743532440466879052110016345977783203125p775 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110101001 #b0111011000001111011111110000001100011010001010001101)))
(assert (= y (fp #b0 #b11100000110 #b0000100000000011111111100100110010011111110011110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

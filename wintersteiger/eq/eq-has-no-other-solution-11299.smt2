(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8077176639599195073770943054114468395709991455078125p-818 {- 3637636970430461 -818 (-1.03418e-246)}
; Y = -1.88656802729421269049225884373299777507781982421875p-914 {- 3992747437360812 -914 (-1.36225e-275)}
; -1.8077176639599195073770943054114468395709991455078125p-818 = -1.88656802729421269049225884373299777507781982421875p-914 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011001101 #b1100111011000110100101011011011100011011111111111101)))
(assert (= y (fp #b1 #b00001101101 #b1110001011110110000111110100101011101000011010101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

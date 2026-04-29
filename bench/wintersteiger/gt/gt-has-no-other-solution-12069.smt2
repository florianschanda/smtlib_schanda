(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8811510488250722250569424431887455284595489501953125p810 {+ 3968351535145717 810 (1.28446e+244)}
; Y = 1.056198409230351575871509339776821434497833251953125p-343 {+ 253095134868626 -343 (5.89464e-104)}
; 1.8811510488250722250569424431887455284595489501953125p810 > 1.056198409230351575871509339776821434497833251953125p-343 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101001 #b1110000110010011000111010111100110001010001011110101)))
(assert (= y (fp #b0 #b01010101000 #b0000111001100011000001001101100110111011010010010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

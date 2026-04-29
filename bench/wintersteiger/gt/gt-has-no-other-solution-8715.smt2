(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7674791528439197652033954000216908752918243408203125p917 {+ 3456418826762501 917 (1.95821e+276)}
; Y = 1.009202004386726247986416638013906776905059814453125p-834 {+ 41442143527122 -834 (8.80971e-252)}
; 1.7674791528439197652033954000216908752918243408203125p917 > 1.009202004386726247986416638013906776905059814453125p-834 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110010100 #b1100010001111001100000111000010111010011100100000101)))
(assert (= y (fp #b0 #b00010111101 #b0000001001011011000100000000001111100110000011010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

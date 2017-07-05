(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.160984242779256714328539601410739123821258544921875p157 {+ 725008575793182 157 (2.12098e+047)}
; Y = 1.088854452552522555919267688295803964138031005859375p379 {+ 400164879405750 379 (1.34072e+114)}
; 1.160984242779256714328539601410739123821258544921875p157 < 1.088854452552522555919267688295803964138031005859375p379 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010011100 #b0010100100110110010000110110100111101000100000011110)))
(assert (= y (fp #b0 #b10101111010 #b0001011010111111001010100101011111010001001010110110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

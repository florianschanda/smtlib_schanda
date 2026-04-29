(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.516696794814027526854260941036045551300048828125p425 {- 2326995492587984 425 (-1.31416e+128)}
; Y = 1.6211889205577791894796746419160626828670501708984375p398 {+ 2797586191150695 398 (1.04658e+120)}
; -1.516696794814027526854260941036045551300048828125p425 > 1.6211889205577791894796746419160626828670501708984375p398 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110101000 #b1000010001000110001111011011101110101100100111010000)))
(assert (= y (fp #b0 #b10110001101 #b1001111100000110001111001011001001101110111001100111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

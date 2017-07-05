(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.46326158597361910551626351661980152130126953125p389 {- 2086344705965856 389 (-1.84497e+117)}
; Y = 1.37824930215554797285903987358324229717254638671875p397 {+ 1703483416240876 397 (4.44873e+119)}
; -1.46326158597361910551626351661980152130126953125p389 > 1.37824930215554797285903987358324229717254638671875p397 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110000100 #b0111011010011000010011111011000100111111111100100000)))
(assert (= y (fp #b0 #b10110001100 #b0110000011010100111100100011111001111110001011101100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

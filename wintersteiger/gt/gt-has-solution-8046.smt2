(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8453741304912758547374096451676450669765472412109375p-76 {- 3807226619069167 -76 (-2.44233e-023)}
; Y = -1.085350033625292365258019344764761626720428466796875p-933 {- 384382379630926 -933 (-1.4948e-281)}
; -1.8453741304912758547374096451676450669765472412109375p-76 > -1.085350033625292365258019344764761626720428466796875p-933 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110011 #b1101100001101010011100000110001101011000001011101111)))
(assert (= y (fp #b1 #b00001011010 #b0001010111011001011111111111001100100010000101001110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

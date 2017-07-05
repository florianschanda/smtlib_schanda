(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6354597100386694119578123718383722007274627685546875p531 {+ 2861856113339115 531 (1.14966e+160)}
; Y = 1.9063046400881991093712031215545721352100372314453125p963 {+ 4081633239385365 963 (1.4862e+290)}
; 1.6354597100386694119578123718383722007274627685546875p531 > 1.9063046400881991093712031215545721352100372314453125p963 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000010010 #b1010001010101101011111001101000010001010101011101011)))
(assert (= y (fp #b0 #b11111000010 #b1110100000000011100101001011010101100100010100010101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

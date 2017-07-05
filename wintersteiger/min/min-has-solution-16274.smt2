(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4527614315896173469155883140047080814838409423828125p309 {- 2039056214594733 309 (-1.51518e+093)}
; Y = -1.13685081307925628379962290637195110321044921875p802 {- 616321270789088 802 (-3.03222e+241)}
; -1.4527614315896173469155883140047080814838409423828125p309 m -1.13685081307925628379962290637195110321044921875p802 == -1.13685081307925628379962290637195110321044921875p802
; [HW: -1.13685081307925628379962290637195110321044921875p802] 

; mpf : - 616321270789088 802
; mpfd: - 616321270789088 802 (-3.03222e+241) class: Neg. norm. non-zero
; hwf : - 616321270789088 802 (-3.03222e+241) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110100 #b0111001111101000001011000101010110010001010010101101)))
(assert (= y (fp #b1 #b11100100001 #b0010001100001000101001111010011010011011001111100000)))
(assert (= r (fp #b1 #b11100100001 #b0010001100001000101001111010011010011011001111100000)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

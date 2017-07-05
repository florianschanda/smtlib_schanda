(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.793285551401166078022697547567076981067657470703125p-420 {- 3572640513688690 -420 (-6.62295e-127)}
; Y = 1.23167360125319458319381737965159118175506591796875p-586 {+ 1043365144275468 -586 (4.86316e-177)}
; -1.793285551401166078022697547567076981067657470703125p-420 > 1.23167360125319458319381737965159118175506591796875p-586 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011011 #b1100101100010100110000110000101110101000010001110010)))
(assert (= y (fp #b0 #b00110110101 #b0011101101001110111101100000110010111010101000001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

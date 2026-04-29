(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.073023933136352692230275351903401315212249755859375p759 {- 328870558062006 759 (-3.25369e+228)}
; Y = -1.6691629499507485423492880727280862629413604736328125p920 {- 3013642012048333 920 (-1.47943e+277)}
; -1.073023933136352692230275351903401315212249755859375p759 > -1.6691629499507485423492880727280862629413604736328125p920 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110110 #b0001001010110001101100100100110010100101010110110110)))
(assert (= y (fp #b1 #b11110010111 #b1010101101001110010000110101100110111011101111001101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.900723592228655167701845130068250000476837158203125p-540 {+ 4056498434324786 -540 (5.28106e-163)}
; Y = -1.921102463276058269769919206737540662288665771484375p743 {- 4148276710380102 743 (-8.88868e+223)}
; 1.900723592228655167701845130068250000476837158203125p-540 > -1.921102463276058269769919206737540662288665771484375p743 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111100011 #b1110011010010101110100100100001101011011100100110010)))
(assert (= y (fp #b1 #b11011100110 #b1110101111001101010111101111110000001001001001000110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2559263772287601046429017515038140118122100830078125p-792 {- 1152589937121725 -792 (-4.82178e-239)}
; Y = 1.89244969515403216320237334002740681171417236328125p40 {+ 4019236114542612 40 (2.08077e+012)}
; -1.2559263772287601046429017515038140118122100830078125p-792 = 1.89244969515403216320237334002740681171417236328125p40 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011100111 #b0100000110000100011001000001110001100001100110111101)))
(assert (= y (fp #b0 #b10000100111 #b1110010001110111100101010100111000000011000000010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

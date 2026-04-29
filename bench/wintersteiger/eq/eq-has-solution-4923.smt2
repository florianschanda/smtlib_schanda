(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5372312632282076894085776075371541082859039306640625p342 {+ 2419474516886337 342 (1.3772e+103)}
; Y = -1.1406361663459156918776216116384603083133697509765625p426 {- 633368986350281 426 (-1.97663e+128)}
; 1.5372312632282076894085776075371541082859039306640625p342 = -1.1406361663459156918776216116384603083133697509765625p426 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010101 #b1000100110000111111111001111000111110100001101000001)))
(assert (= y (fp #b1 #b10110101001 #b0010010000000000101110110101011100010111001011001001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.72667323346427092900512434425763785839080810546875p-70 {+ 3272645303449804 -70 (1.46255e-021)}
; Y = -1.7752453113923711836008578757173381745815277099609375p153 {- 3491394495507407 153 (-2.02697e+046)}
; 1.72667323346427092900512434425763785839080810546875p-70 = -1.7752453113923711836008578757173381745815277099609375p153 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111001 #b1011101000000111010000011100110010011011100011001100)))
(assert (= y (fp #b1 #b10010011000 #b1100011001110110011110100000101011001110101111001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2308130809165918062575428848504088819026947021484375p357 {+ 1039489705208199 357 (3.61327e+107)}
; Y = 1.8729533593294365179104943308630026876926422119140625p451 {+ 3931432423787873 451 (1.08907e+136)}
; 1.2308130809165918062575428848504088819026947021484375p357 > 1.8729533593294365179104943308630026876926422119140625p451 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101100100 #b0011101100010110100100001110101000000110100110000111)))
(assert (= y (fp #b0 #b10111000010 #b1101111101111001110111110001000101000000110101100001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.32474838909213676885201493860222399234771728515625p-534 {+ 1462536724104516 -534 (2.35568e-161)}
; Y = -1.7514290186348919764469656001892872154712677001953125p-251 {- 3384135448319477 -251 (-4.8402e-076)}
; 1.32474838909213676885201493860222399234771728515625p-534 > -1.7514290186348919764469656001892872154712677001953125p-251 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101001 #b0101001100100010101101011101111010010100010101000100)))
(assert (= y (fp #b1 #b01100000100 #b1100000001011101101001101111010001001101010111110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.78545509707955307732163419132120907306671142578125p362 {+ 3537375282523732 362 (1.67729e+109)}
; Y = 1.8181047002134917978111161573906429111957550048828125p-765 {+ 3684416023031533 -765 (9.36855e-231)}
; 1.78545509707955307732163419132120907306671142578125p362 = 1.8181047002134917978111161573906429111957550048828125p-765 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101001 #b1100100100010011100101011101001001101110111001010100)))
(assert (= y (fp #b0 #b00100000010 #b1101000101101111010011110100010000011110111011101101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

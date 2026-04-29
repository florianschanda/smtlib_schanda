(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6244863027641891495278514412348158657550811767578125p-577 {+ 2812436280426781 -577 (3.28404e-174)}
; Y = -1.9918932630230419267292063523200340569019317626953125p384 {- 4467090129741877 384 (-7.84846e+115)}
; 1.6244863027641891495278514412348158657550811767578125p-577 = -1.9918932630230419267292063523200340569019317626953125p384 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110111110 #b1001111111011110010101011001011100101100000100011101)))
(assert (= y (fp #b1 #b10101111111 #b1111110111101100101101111000010111001110100000110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

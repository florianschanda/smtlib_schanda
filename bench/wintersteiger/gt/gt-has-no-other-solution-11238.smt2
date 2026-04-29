(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9019436747936941944914224222884513437747955322265625p492 {+ 4061993197710057 492 (2.43195e+148)}
; Y = -1.367948004052978117073280373006127774715423583984375p-952 {- 1657090493944710 -952 (-3.59347e-287)}
; 1.9019436747936941944914224222884513437747955322265625p492 > -1.367948004052978117073280373006127774715423583984375p-952 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101011 #b1110011011100101110001111101101000010010101011101001)))
(assert (= y (fp #b1 #b00001000111 #b0101111000110001110101110010010000001001001110000110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

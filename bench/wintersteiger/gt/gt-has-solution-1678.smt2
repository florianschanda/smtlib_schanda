(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.765639631645496532286188084981404244899749755859375p45 {+ 3448134359778742 45 (6.21229e+013)}
; Y = 1.16465777851064355985499787493608891963958740234375p-643 {+ 741552709944188 -643 (3.19088e-194)}
; 1.765639631645496532286188084981404244899749755859375p45 > 1.16465777851064355985499787493608891963958740234375p-643 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000101100 #b1100010000000000111101010111101001110000010110110110)))
(assert (= y (fp #b0 #b00101111100 #b0010101000100111000000110001110110111100001101111100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

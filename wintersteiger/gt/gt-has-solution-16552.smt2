(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.763116881450553563581706839613616466522216796875p-514 {- 3436772902940848 -514 (-3.28748e-155)}
; Y = -1.6857570564004460411666741492808796465396881103515625p267 {- 3088375223671737 267 (-3.99764e+080)}
; -1.763116881450553563581706839613616466522216796875p-514 > -1.6857570564004460411666741492808796465396881103515625p267 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111101 #b1100001101011011101000001100000011011011000010110000)))
(assert (= y (fp #b1 #b10100001010 #b1010111110001101110001100100001000111101101110111001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

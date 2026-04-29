(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.96741438914231725476611245539970695972442626953125p-393 {- 4356847082454196 -393 (-9.75231e-119)}
; Y = 1.34985171619692412292579319910146296024322509765625p-893 {+ 1575592058699396 -893 (2.04409e-269)}
; -1.96741438914231725476611245539970695972442626953125p-393 < 1.34985171619692412292579319910146296024322509765625p-893 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110110 #b1111011110101000011110000010101100001011110010110100)))
(assert (= y (fp #b0 #b00010000010 #b0101100110001111111000011100111110000011111010000100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

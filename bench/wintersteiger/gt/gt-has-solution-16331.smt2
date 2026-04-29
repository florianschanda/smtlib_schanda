(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8518677312841937965259830889408476650714874267578125p-914 {- 3836471197180445 -914 (-1.33719e-275)}
; Y = 1.0575108503862209463619592497707344591617584228515625p50 {+ 259005844369145 50 (1.19065e+015)}
; -1.8518677312841937965259830889408476650714874267578125p-914 > 1.0575108503862209463619592497707344591617584228515625p50 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101101 #b1101101000010100000000001110111001100010001000011101)))
(assert (= y (fp #b0 #b10000110001 #b0000111010111001000001111111010110010010111011111001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

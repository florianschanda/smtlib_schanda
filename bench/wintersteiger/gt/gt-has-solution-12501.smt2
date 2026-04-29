(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.03008966723628869743834002292715013027191162109375p804 {- 135511814153052 804 (-1.09898e+242)}
; Y = 1.4626796423749219844268054657732136547565460205078125p-668 {+ 2083723864991613 -668 (1.1943e-201)}
; -1.03008966723628869743834002292715013027191162109375p804 > 1.4626796423749219844268054657732136547565460205078125p-668 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100011 #b0000011110110011111101001101100010111010001101011100)))
(assert (= y (fp #b0 #b00101100011 #b0111011001110010001011000100110010000110011101111101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7169954860987883815681698251864872872829437255859375p978 {+ 3229060604020831 978 (4.38637e+294)}
; Y = 1.7814216536502109899942070114775560796260833740234375p-327 {+ 3519210268198327 -327 (6.51566e-099)}
; 1.7169954860987883815681698251864872872829437255859375p978 < 1.7814216536502109899942070114775560796260833740234375p-327 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010001 #b1011011110001101000001000010010000101100100001011111)))
(assert (= y (fp #b0 #b01010111000 #b1100100000001011001111111101111011010000010110110111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

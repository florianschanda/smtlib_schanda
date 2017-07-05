(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3051261469108077495349107266520150005817413330078125p-900 {- 1374166001528509 -900 (-1.54403e-271)}
; Y = -1.6876236178447243663214294429053552448749542236328125p-966 {- 3096781469096653 -966 (-2.70583e-291)}
; -1.3051261469108077495349107266520150005817413330078125p-900 = -1.6876236178447243663214294429053552448749542236328125p-966 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111011 #b0100111000011100101111110100011000100010111010111101)))
(assert (= y (fp #b1 #b00000111001 #b1011000000001000000110011111011010011001101011001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

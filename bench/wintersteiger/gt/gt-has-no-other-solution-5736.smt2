(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7399567484942191075703021851950325071811676025390625p241 {- 3332468936788849 241 (-6.14847e+072)}
; Y = -1.286504590783751122984313042252324521541595458984375p-118 {- 1290301968293638 -118 (-3.87143e-036)}
; -1.7399567484942191075703021851950325071811676025390625p241 > -1.286504590783751122984313042252324521541595458984375p-118 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011110000 #b1011110101101101110011100011001100111100101101110001)))
(assert (= y (fp #b1 #b01110001001 #b0100100101011000010111010110011110010001111100000110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

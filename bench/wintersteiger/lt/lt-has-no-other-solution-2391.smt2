(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0425384903097840716412747497088275849819183349609375p199 {+ 191576329108047 199 (8.37647e+059)}
; Y = 1.499551770814566253875455004163086414337158203125p802 {+ 2249781168892752 802 (3.99961e+241)}
; 1.0425384903097840716412747497088275849819183349609375p199 < 1.499551770814566253875455004163086414337158203125p802 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011000110 #b0000101011100011110011010111000010110011101001001111)))
(assert (= y (fp #b0 #b11100100001 #b0111111111100010100111111111011001001110101101010000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

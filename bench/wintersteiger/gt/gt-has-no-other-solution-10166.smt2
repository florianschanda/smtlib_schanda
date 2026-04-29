(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1857738722419626231641132108052261173725128173828125p634 {+ 836651141804077 634 (8.45316e+190)}
; Y = 1.0172029116823682048931232202448882162570953369140625p298 {+ 77475026642401 298 (5.1802e+089)}
; 1.1857738722419626231641132108052261173725128173828125p634 > 1.0172029116823682048931232202448882162570953369140625p298 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001111001 #b0010111110001110111000000110000110111011000000101101)))
(assert (= y (fp #b0 #b10100101001 #b0000010001100111011010001111011100010010010111100001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

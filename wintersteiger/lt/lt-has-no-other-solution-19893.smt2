(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.039350575559421674398663526517339050769805908203125p978 {- 177219237426226 978 (-2.6552e+294)}
; Y = 1.5797955012634539162519331512157805263996124267578125p-571 {+ 2611166803441181 -571 (2.04396e-172)}
; -1.039350575559421674398663526517339050769805908203125p978 < 1.5797955012634539162519331512157805263996124267578125p-571 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010001 #b0000101000010010111000010001101100011011010000110010)))
(assert (= y (fp #b0 #b00111000100 #b1001010001101101011110100101110001001011011000011101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

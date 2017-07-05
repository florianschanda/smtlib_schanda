(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.510748680396233112332993187010288238525390625p843 {- 2300207566712448 843 (-8.86091e+253)}
; Y = 1.2266739838520799299459440589998848736286163330078125p-1019 {+ 1020848869210813 -1019 (2.18355e-307)}
; -1.510748680396233112332993187010288238525390625p843 = 1.2266739838520799299459440589998848736286163330078125p-1019 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101001010 #b1000001011000000011011001110111011000110111010000000)))
(assert (= y (fp #b0 #b00000000100 #b0011101000000111010011100110001101111111101010111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

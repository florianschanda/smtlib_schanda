(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5569265256899591509665015109931118786334991455078125p-841 {- 2508174093570045 -841 (-1.0618e-253)}
; Y = -1.616957626321533947333364267251454293727874755859375p-836 {- 2778530136005046 -836 (-3.52876e-252)}
; -1.5569265256899591509665015109931118786334991455078125p-841 < -1.616957626321533947333364267251454293727874755859375p-836 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010110110 #b1000111010010010101111001001111000011100111111111101)))
(assert (= y (fp #b1 #b00010111011 #b1001110111110000111011110101110000010001100110110110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

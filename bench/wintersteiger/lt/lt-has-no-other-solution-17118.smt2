(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2707052412225057214101298086461611092090606689453125p-524 {+ 1219148023496917 -524 (2.31381e-158)}
; Y = -1.905486729259114664358776281005702912807464599609375p-104 {- 4077949696480278 -104 (-9.39477e-032)}
; 1.2707052412225057214101298086461611092090606689453125p-524 < -1.905486729259114664358776281005702912807464599609375p-104 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110011 #b0100010101001100111100000100110111101000000011010101)))
(assert (= y (fp #b1 #b01110010111 #b1110011111001101111110100111000100100001010000010110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3509590885591162834344913790118880569934844970703125p992 {- 1580579220457125 992 (-5.65455e+298)}
; Y = 1.2268655842555542534455526038073003292083740234375p92 {+ 1021711760716504 92 (6.07514e+027)}
; -1.3509590885591162834344913790118880569934844970703125p992 > 1.2268655842555542534455526038073003292083740234375p92 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011111 #b0101100111011000011101000110111110011000011010100101)))
(assert (= y (fp #b0 #b10001011011 #b0011101000010011110111001110100011110111001011011000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

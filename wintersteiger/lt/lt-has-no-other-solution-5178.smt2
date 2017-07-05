(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.58241566817174561521142095443792641162872314453125p-2 {+ 2622966986153012 -2 (0.395604)}
; Y = 1.312701426383602321124044465250335633754730224609375p-1020 {+ 1408282027339414 -1020 (1.16834e-307)}
; 1.58241566817174561521142095443792641162872314453125p-2 < 1.312701426383602321124044465250335633754730224609375p-1020 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111111101 #b1001010100011001001100010111011101111001110000110100)))
(assert (= y (fp #b0 #b00000000011 #b0101000000001101001100110101111110111010111010010110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

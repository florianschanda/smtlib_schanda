(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0975356774492983635838072586921043694019317626953125p-67 {+ 439261640615989 -67 (7.43719e-021)}
; Y = 1.4733920110155132032758729110355488955974578857421875p-5 {+ 2131968084409635 -5 (0.0460435)}
; 1.0975356774492983635838072586921043694019317626953125p-67 > 1.4733920110155132032758729110355488955974578857421875p-5 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111100 #b0001100011111000000110010010000011010110100000110101)))
(assert (= y (fp #b0 #b01111111010 #b0111100100110000001110000000010101111111110100100011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

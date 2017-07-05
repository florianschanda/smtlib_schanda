(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5549735710603578286992387802456505596637725830078125p-340 {- 2499378767827901 -340 (-6.94264e-103)}
; Y = 1.192207991557578505847914129844866693019866943359375p-812 {+ 865627839156342 -812 (4.36511e-245)}
; -1.5549735710603578286992387802456505596637725830078125p-340 > 1.192207991557578505847914129844866693019866943359375p-812 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010101011 #b1000111000010010101111110111100111011001001110111101)))
(assert (= y (fp #b0 #b00011010011 #b0011000100110100100010101111110111000101000001110110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

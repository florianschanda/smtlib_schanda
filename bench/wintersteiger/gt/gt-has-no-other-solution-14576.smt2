(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4470056736654510753936619948945008218288421630859375p1000 {- 2013134585352223 1000 (-1.55048e+301)}
; Y = -1.365240066152978659630434776772744953632354736328125p464 {- 1644895025827330 464 (-6.5032e+139)}
; -1.4470056736654510753936619948945008218288421630859375p1000 > -1.365240066152978659630434776772744953632354736328125p464 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111100111 #b0111001001101110111101101011110110000101000000011111)))
(assert (= y (fp #b1 #b10111001111 #b0101110110000000010111110111101101010000111000000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

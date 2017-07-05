(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0418972227273053388074686154141090810298919677734375p494 {- 188688316662551 494 (-5.32896e+148)}
; Y = 1.9416798040288931748165168755804188549518585205078125p-385 {+ 4240948814526845 -385 (2.46394e-116)}
; -1.0418972227273053388074686154141090810298919677734375p494 = 1.9416798040288931748165168755804188549518585205078125p-385 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111101101 #b0000101010111001110001101100000101101000001100010111)))
(assert (= y (fp #b0 #b01001111110 #b1111000100010001111011010111100110011011100101111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

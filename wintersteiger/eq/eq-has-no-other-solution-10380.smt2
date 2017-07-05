(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.110358093717683569678911226219497621059417724609375p-994 {+ 497008669744278 -994 (6.63204e-300)}
; Y = 1.5910464635152778978266496778815053403377532958984375p-3 {+ 2661836632846055 -3 (0.198881)}
; 1.110358093717683569678911226219497621059417724609375p-994 = 1.5910464635152778978266496778815053403377532958984375p-3 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011101 #b0001110001000000011011011001001101011101110010010110)))
(assert (= y (fp #b0 #b01111111100 #b1001011101001110110100100010111100110110111011100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

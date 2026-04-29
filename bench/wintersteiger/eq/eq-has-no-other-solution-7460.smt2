(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3494166544800030305140126074547879397869110107421875p-989 {- 1573632714913187 -989 (-2.57917e-298)}
; Y = -1.9447052400706461572355010503088124096393585205078125p576 {- 4254574167157117 576 (-4.80985e+173)}
; -1.3494166544800030305140126074547879397869110107421875p-989 = -1.9447052400706461572355010503088124096393585205078125p576 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100010 #b0101100101110011010111101010111110101011010110100011)))
(assert (= y (fp #b1 #b11000111111 #b1111000111011000001100111101111001110110100101111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

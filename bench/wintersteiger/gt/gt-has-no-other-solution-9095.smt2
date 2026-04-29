(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.53151198780486108574905301793478429317474365234375p330 {- 2393717190220924 330 (-3.3498e+099)}
; Y = 1.5758318889089470982156626632786355912685394287109375p189 {+ 2593316280318383 189 (1.23646e+057)}
; -1.53151198780486108574905301793478429317474365234375p330 > 1.5758318889089470982156626632786355912685394287109375p189 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001001 #b1000100000010001001010110110110100001101110001111100)))
(assert (= y (fp #b0 #b10010111100 #b1001001101101001101101111111101011011011100110101111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

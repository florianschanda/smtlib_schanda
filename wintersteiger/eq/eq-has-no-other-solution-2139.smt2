(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2017848632645555806419679356622509658336639404296875p982 {- 908758235007259 982 (-4.91227e+295)}
; Y = -1.8264393992376459774362729149288497865200042724609375p656 {- 3721952170450959 656 (-5.46113e+197)}
; -1.2017848632645555806419679356622509658336639404296875p982 = -1.8264393992376459774362729149288497865200042724609375p656 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010101 #b0011001110101000001011000011110010001100100100011011)))
(assert (= y (fp #b1 #b11010001111 #b1101001110010001100010000100111111011010000000001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

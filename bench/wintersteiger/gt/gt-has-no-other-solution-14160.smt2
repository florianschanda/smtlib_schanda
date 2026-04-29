(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8050987083408218669688949375995434820652008056640625p-688 {- 3625842242880193 -688 (-1.40561e-207)}
; Y = 1.9527933847662322097704645784688182175159454345703125p793 {+ 4290999932594277 793 (1.01729e+239)}
; -1.8050987083408218669688949375995434820652008056640625p-688 > 1.9527933847662322097704645784688182175159454345703125p793 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101001111 #b1100111000011010111100101110111001100000001011000001)))
(assert (= y (fp #b0 #b11100011000 #b1111001111101010010001000110101101101010100001100101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

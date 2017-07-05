(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3972807966053319983501523893210105597972869873046875p-534 {- 1789193647553227 -534 (-2.48465e-161)}
; Y = 1.7247378424980042144198932874132879078388214111328125p-356 {+ 3263929077415309 -356 (1.17502e-107)}
; -1.3972807966053319983501523893210105597972869873046875p-534 > 1.7247378424980042144198932874132879078388214111328125p-356 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111101001 #b0110010110110100001100011011110010111111101011001011)))
(assert (= y (fp #b0 #b01010011011 #b1011100110001000011010110101001110110011110110001101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

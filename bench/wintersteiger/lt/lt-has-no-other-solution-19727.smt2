(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9422702438891741305582172572030685842037200927734375p61 {- 4243607919261591 61 (-4.47857e+018)}
; Y = 1.1956880158808089742450420089880935847759246826171875p-295 {+ 881300475401683 -295 (1.87832e-089)}
; -1.9422702438891741305582172572030685842037200927734375p61 < 1.1956880158808089742450420089880935847759246826171875p-295 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111100 #b1111000100111000100111110110100101111111011110010111)))
(assert (= y (fp #b0 #b01011011000 #b0011001000011000100111000001110001101101010111010011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

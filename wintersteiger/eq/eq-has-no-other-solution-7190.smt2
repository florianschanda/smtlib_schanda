(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.394170126677468868336973173427395522594451904296875p711 {- 1775184435625230 711 (-1.50191e+214)}
; Y = 1.3425910185609521985128367305151186883449554443359375p802 {+ 1542892783531583 802 (3.58097e+241)}
; -1.394170126677468868336973173427395522594451904296875p711 = 1.3425910185609521985128367305151186883449554443359375p802 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011000110 #b0110010011101000010101010101101100100011110100001110)))
(assert (= y (fp #b0 #b11100100001 #b0101011110110100000010111000010010011111011000111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

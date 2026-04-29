(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.638166984651164614916751816053874790668487548828125p570 {+ 2874048594275138 570 (6.33076e+171)}
; Y = -1.4817158801135457135700335129513405263423919677734375p-391 {- 2169455458177815 -391 (-2.9379e-118)}
; 1.638166984651164614916751816053874790668487548828125p570 = -1.4817158801135457135700335129513405263423919677734375p-391 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111001 #b1010001101011110111010010101100001110110101101000010)))
(assert (= y (fp #b1 #b01001111000 #b0111101101010001101110110101111100001101001100010111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.525725542875490337024757536710239946842193603515625p444 {- 2367657358993210 444 (-6.93098e+133)}
; Y = 1.802853250239838889257271148380823433399200439453125p-651 {+ 3615729598613330 -651 (1.92945e-196)}
; -1.525725542875490337024757536710239946842193603515625p444 > 1.802853250239838889257271148380823433399200439453125p-651 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111011 #b1000011010010101111100101111110101010010011100111010)))
(assert (= y (fp #b0 #b00101110100 #b1100110110000111110010100110010101000100011101010010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

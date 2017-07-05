(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1089734411332361485591491145896725356578826904296875p-711 {- 490772748880923 -711 (-1.02942e-214)}
; Y = -1.381126910943711205703721134341321885585784912109375p150 {- 1716443014106966 150 (-1.97121e+045)}
; -1.1089734411332361485591491145896725356578826904296875p-711 = -1.381126910943711205703721134341321885585784912109375p150 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100111000 #b0001101111100101101011101111010111001100110000011011)))
(assert (= y (fp #b1 #b10010010101 #b0110000110010001100010001000001000100000111101010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

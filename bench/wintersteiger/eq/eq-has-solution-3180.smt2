(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9825323480747838456039744414738379418849945068359375p67 {- 4424932316669055 67 (-2.9257e+020)}
; Y = 1.9935334576454672994572092648013494908809661865234375p174 {+ 4474476909632247 174 (4.77356e+052)}
; -1.9825323480747838456039744414738379418849945068359375p67 = 1.9935334576454672994572092648013494908809661865234375p174 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001000010 #b1111101110000111001111010110111000111110010001111111)))
(assert (= y (fp #b0 #b10010101101 #b1111111001011000001101010110110000010001101011110111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

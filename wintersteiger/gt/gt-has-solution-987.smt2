(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0810093570695789022551025482243858277797698974609375p-323 {- 364833710312079 -323 (-6.32617e-098)}
; Y = 1.410315479756008461009741949965246021747589111328125p698 {+ 1847896641733506 698 (1.85461e+210)}
; -1.0810093570695789022551025482243858277797698974609375p-323 > 1.410315479756008461009741949965246021747589111328125p698 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010111100 #b0001010010111101000001110111101101001000101010001111)))
(assert (= y (fp #b0 #b11010111001 #b0110100100001010011011110110111010011000001110000010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

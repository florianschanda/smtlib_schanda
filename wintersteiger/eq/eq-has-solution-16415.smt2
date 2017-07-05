(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4574292318887278607775215277797542512416839599609375p-274 {+ 2060078118282447 -274 (4.80141e-083)}
; Y = -1.9721122335769736277910624266951344907283782958984375p-714 {- 4378004292899559 -714 (-2.28831e-215)}
; 1.4574292318887278607775215277797542512416839599609375p-274 = -1.9721122335769736277910624266951344907283782958984375p-714 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011101101 #b0111010100011010000101010000011100110010010011001111)))
(assert (= y (fp #b1 #b00100110101 #b1111100011011100010110001110101101000001001011100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.249021894979904789835245537688024342060089111328125p-616 {- 1121494913438594 -616 (-4.59296e-186)}
; Y = -1.387423283627450931732028038823045790195465087890625p392 {- 1744799355779242 392 (-1.39948e+118)}
; -1.249021894979904789835245537688024342060089111328125p-616 < -1.387423283627450931732028038823045790195465087890625p392 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010111 #b0011111110111111111001100001111011101101001110000010)))
(assert (= y (fp #b1 #b10110000111 #b0110001100101110001011000001110011100011100010101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

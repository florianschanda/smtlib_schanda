(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.389190340144226265550742027699016034603118896484375p-280 {- 1752757470849734 -280 (-7.15094e-085)}
; Y = 1.2284303939512450920545916233095340430736541748046875p-722 {+ 1028759037078923 -722 (5.56793e-218)}
; -1.389190340144226265550742027699016034603118896484375p-280 = 1.2284303939512450920545916233095340430736541748046875p-722 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011100111 #b0110001110100001111110100110011011010110101011000110)))
(assert (= y (fp #b0 #b00100101101 #b0011101001111010011010100000111101101110110110001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

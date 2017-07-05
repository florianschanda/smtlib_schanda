(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8319801863087989968192914602695964276790618896484375p-739 {+ 3746905657039943 -739 (6.33511e-223)}
; Y = 1.9812656896811795537161060565267689526081085205078125p-56 {+ 4419227794399613 -56 (2.74956e-017)}
; 1.8319801863087989968192914602695964276790618896484375p-739 > 1.9812656896811795537161060565267689526081085205078125p-56 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011100 #b1101010011111100101001110100101100011101110001000111)))
(assert (= y (fp #b0 #b01111000111 #b1111101100110100001110100110110111011110000101111101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

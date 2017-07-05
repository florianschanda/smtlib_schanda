(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0199457739759711927263197139836847782135009765625p90 {+ 89827780245800 90 (1.26263e+027)}
; Y = -1.968622063660904419890584904351271688938140869140625p391 {- 4362285964966090 391 (-9.92866e+117)}
; 1.0199457739759711927263197139836847782135009765625p90 < -1.968622063660904419890584904351271688938140869140625p391 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011001 #b0000010100011011001010101000111011101011100100101000)))
(assert (= y (fp #b1 #b10110000110 #b1111011111110111100111011001010110011011100011001010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

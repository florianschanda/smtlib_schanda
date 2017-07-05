(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7861809947917881569168230271316133439540863037109375p-467 {+ 3540644435190063 -467 (4.68724e-141)}
; Y = -1.7945477144858317242182010886608622968196868896484375p-306 {- 3578324790886471 -306 (-1.3765e-092)}
; 1.7861809947917881569168230271316133439540863037109375p-467 < -1.7945477144858317242182010886608622968196868896484375p-306 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000101100 #b1100100101000011001010000101110101011110000100101111)))
(assert (= y (fp #b1 #b01011001101 #b1100101101100111011110101010000011010100000001000111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

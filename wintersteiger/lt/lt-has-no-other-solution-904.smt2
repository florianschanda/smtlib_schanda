(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.529619131389576391910622987779788672924041748046875p328 {- 2385192522774382 328 (-8.36415e+098)}
; Y = 1.8056107759564776760186077808612026274204254150390625p186 {+ 3628148390403249 186 (1.77094e+056)}
; -1.529619131389576391910622987779788672924041748046875p328 < 1.8056107759564776760186077808612026274204254150390625p186 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101000111 #b1000011110010101000111101001000010100111011101101110)))
(assert (= y (fp #b0 #b10010111001 #b1100111000111100100000100000000000001001110010110001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

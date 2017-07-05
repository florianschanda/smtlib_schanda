(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6465332741193143828439815479214303195476531982421875p-427 {+ 2911727012406371 -427 (4.75075e-129)}
; Y = 1.617438669475592671886943207937292754650115966796875p1022 {+ 2780696561774414 1022 (7.26915e+307)}
; 1.6465332741193143828439815479214303195476531982421875p-427 < 1.617438669475592671886943207937292754650115966796875p1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010100 #b1010010110000011001101000110010000011110010001100011)))
(assert (= y (fp #b0 #b11111111101 #b1001111000010000011101011110110010101110111101001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

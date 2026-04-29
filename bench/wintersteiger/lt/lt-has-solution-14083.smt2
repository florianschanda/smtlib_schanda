(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1806081226060978206504614718141965568065643310546875p-818 {- 813386673668907 -818 (-6.75413e-247)}
; Y = -1.8910823803024043865406156328390352427959442138671875p329 {- 4013078275886323 329 (-2.06814e+099)}
; -1.1806081226060978206504614718141965568065643310546875p-818 < -1.8910823803024043865406156328390352427959442138671875p329 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011001101 #b0010111000111100010101010111101111111100001100101011)))
(assert (= y (fp #b1 #b10101001000 #b1110010000011101111110011001000101110000110011110011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

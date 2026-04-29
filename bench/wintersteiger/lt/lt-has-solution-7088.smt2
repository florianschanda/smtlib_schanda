(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1492299376639534269628484253189526498317718505859375p279 {+ 672071891655903 279 (1.11629e+084)}
; Y = -1.9290516824053882682932226089178584516048431396484375p302 {- 4184076810688839 302 (-1.57182e+091)}
; 1.1492299376639534269628484253189526498317718505859375p279 < -1.9290516824053882682932226089178584516048431396484375p302 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100010110 #b0010011000110011111011101110010111011001110011011111)))
(assert (= y (fp #b1 #b10100101101 #b1110110111010110010101001100000000111001100101000111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

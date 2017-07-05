(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.28409023414532708073920730384998023509979248046875p-401 {+ 1279428672636492 -401 (2.48638e-121)}
; Y = 1.050256432864076661104490995057858526706695556640625p-620 {+ 226334852319626 -620 (2.41378e-187)}
; 1.28409023414532708073920730384998023509979248046875p-401 < 1.050256432864076661104490995057858526706695556640625p-620 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001101110 #b0100100010111010001000110011100011000100011001001100)))
(assert (= y (fp #b0 #b00110010011 #b0000110011011101100110110000011110010000100110001010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

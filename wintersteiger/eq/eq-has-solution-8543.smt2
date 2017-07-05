(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.478886017971445365759564083418808877468109130859375p321 {- 2156710892089142 321 (-6.31776e+096)}
; Y = -1.5801485207652394837651854686555452644824981689453125p551 {- 2612756661937877 551 (-1.16473e+166)}
; -1.478886017971445365759564083418808877468109130859375p321 = -1.5801485207652394837651854686555452644824981689453125p551 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101000000 #b0111101010011000010001100010100110110010111100110110)))
(assert (= y (fp #b1 #b11000100110 #b1001010010000100100111010000101110000010011011010101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

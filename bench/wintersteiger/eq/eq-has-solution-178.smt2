(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7958787387060421991691328003071248531341552734375p-701 {- 3584319191068632 -701 (-1.70706e-211)}
; Y = 1.9602721186229270511347522187861613929271697998046875p823 {+ 4324681155604491 823 (1.09649e+248)}
; -1.7958787387060421991691328003071248531341552734375p-701 = 1.9602721186229270511347522187861613929271697998046875p823 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000010 #b1100101110111110101101011000001001010010111111011000)))
(assert (= y (fp #b0 #b11100110110 #b1111010111010100011001001100000010111111000000001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

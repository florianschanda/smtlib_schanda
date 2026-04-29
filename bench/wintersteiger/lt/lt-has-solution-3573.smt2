(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6275935468415287932231194645282812416553497314453125p-461 {+ 2826430063695637 -461 (2.73349e-139)}
; Y = 1.989035563872693312958972455817274749279022216796875p-1020 {+ 4454220196913230 -1020 (1.7703e-307)}
; 1.6275935468415287932231194645282812416553497314453125p-461 < 1.989035563872693312958972455817274749279022216796875p-1020 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000110010 #b1010000010101001111110000111111011011101011100010101)))
(assert (= y (fp #b0 #b00000000011 #b1111110100110001011011110100100101101010000001001110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

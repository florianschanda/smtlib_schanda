(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8142884452383707394318435035529546439647674560546875p285 {- 3667229138547627 285 (-1.12786e+086)}
; Y = -1.31135356902688737790185768972150981426239013671875p-999 {- 1402211817449964 -999 (-2.44768e-301)}
; -1.8142884452383707394318435035529546439647674560546875p285 < -1.31135356902688737790185768972150981426239013671875p-999 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011100 #b1101000001110101001101010010000111001111001110101011)))
(assert (= y (fp #b1 #b00000011000 #b0100111110110100110111100001010001110110100111101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

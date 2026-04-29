(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.294797718494688609780496335588395595550537109375p-711 {- 1327650895162352 -711 (-1.20192e-214)}
; Y = 1.5142307400652992299683319288305938243865966796875p389 {+ 2315889369340536 389 (1.90924e+117)}
; -1.294797718494688609780496335588395595550537109375p-711 = 1.5142307400652992299683319288305938243865966796875p389 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100111000 #b0100101101110111110111001111111111011110101111110000)))
(assert (= y (fp #b0 #b10110000100 #b1000001110100100101000000011001100101101101001111000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

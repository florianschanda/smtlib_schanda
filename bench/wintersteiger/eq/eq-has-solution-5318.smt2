(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7302223322207783695603211526758968830108642578125p864 {- 3288629023287112 864 (-2.12823e+260)}
; Y = 1.0995063667055660072691125606070272624492645263671875p-296 {+ 448136836016179 -296 (8.63613e-090)}
; -1.7302223322207783695603211526758968830108642578125p864 = 1.0995063667055660072691125606070272624492645263671875p-296 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011111 #b1011101011101111110110011100101110110010011101001000)))
(assert (= y (fp #b0 #b01011010111 #b0001100101111001001111111100111010111110100000110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

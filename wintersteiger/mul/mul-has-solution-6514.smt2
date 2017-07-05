(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1119390379902258647604185171076096594333648681640625p517 {- 504128609780993 517 (-4.77077e+155)}
; Y = -1.959776817871851317676146209123544394969940185546875p-199 {- 4322450519326510 -199 (-2.43914e-060)}
; -1.1119390379902258647604185171076096594333648681640625p517 * -1.959776817871851317676146209123544394969940185546875p-199 == 1.0895761747699863608573878082097508013248443603515625p319
; [HW: 1.0895761747699863608573878082097508013248443603515625p319] 

; mpf : + 403415227315385 319
; mpfd: + 403415227315385 319 (1.16366e+096) class: Pos. norm. non-zero
; hwf : + 403415227315385 319 (1.16366e+096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000000100 #b0001110010101000000010010110101101010000010100000001)))
(assert (= y (fp #b1 #b01100111000 #b1111010110110011111011101111110000110111111100101110)))
(assert (= r (fp #b0 #b10100111110 #b0001011011101110011101101101010100100011010010111001)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)

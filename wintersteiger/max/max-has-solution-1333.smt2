(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.88637439138247398062731008394621312618255615234375p610 {+ 3991875378740860 610 (8.0154e+183)}
; Y = -1.3418386993581588040314045429113321006298065185546875p-547 {- 1539504639050219 -547 (-2.91268e-165)}
; 1.88637439138247398062731008394621312618255615234375p610 M -1.3418386993581588040314045429113321006298065185546875p-547 == 1.88637439138247398062731008394621312618255615234375p610
; [HW: 1.88637439138247398062731008394621312618255615234375p610] 

; mpf : + 3991875378740860 610
; mpfd: + 3991875378740860 610 (8.0154e+183) class: Pos. norm. non-zero
; hwf : + 3991875378740860 610 (8.0154e+183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100001 #b1110001011101001011011101001111011111111111001111100)))
(assert (= y (fp #b1 #b00111011100 #b0101011110000010101111011011001001000000000111101011)))
(assert (= r (fp #b0 #b11001100001 #b1110001011101001011011101001111011111111111001111100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

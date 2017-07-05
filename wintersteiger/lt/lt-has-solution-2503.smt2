(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0506756514956820947048754533170722424983978271484375p-199 {+ 228222845192711 -199 (1.30767e-060)}
; Y = -1.719020757429687851214339389116503298282623291015625p903 {- 3238181615231994 903 (-1.16243e+272)}
; 1.0506756514956820947048754533170722424983978271484375p-199 < -1.719020757429687851214339389116503298282623291015625p903 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100111000 #b0000110011111001000101000101100111100000101000000111)))
(assert (= y (fp #b1 #b11110000110 #b1011100000010001101111101000111001001110001111111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

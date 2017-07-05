(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8955988460960344621497597472625784575939178466796875p122 {+ 4033418629551547 122 (1.00787e+037)}
; Y = 1.577684378792784780642932673799805343151092529296875p952 {+ 2601659153068942 952 (6.00587e+286)}
; 1.8955988460960344621497597472625784575939178466796875p122 * 1.577684378792784780642932673799805343151092529296875p952 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111001 #b1110010101000101111101110100101001010001010110111011)))
(assert (= y (fp #b0 #b11110110111 #b1001001111100011000111111001101001010011001110001110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

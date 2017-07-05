(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.397901104603775923607145159621722996234893798828125p-862 {+ 1791987266423874 -862 (4.5459e-260)}
; Y = 1.020012285518685057894572310033254325389862060546875p342 {+ 90127321604782 342 (9.13827e+102)}
; Z = +oo {+ 0 1024 (1.#INF)}
; 1.397901104603775923607145159621722996234893798828125p-862 x 1.020012285518685057894572310033254325389862060546875p342 +oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100001 #b0110010111011100110110001100011101010000110001000010)))
(assert (= y (fp #b0 #b10101010101 #b0000010100011111100001100110111111010010001010101110)))
(assert (= z (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)

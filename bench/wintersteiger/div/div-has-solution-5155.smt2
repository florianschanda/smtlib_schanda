(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4410965534092259332510366220958530902862548828125p684 {- 1986522273568200 684 (-1.15667e+206)}
; Y = -1.749502982727690447717350252787582576274871826171875p-549 {- 3375461353725502 -549 (-9.49395e-166)}
; -1.4410965534092259332510366220958530902862548828125p684 / -1.749502982727690447717350252787582576274871826171875p-549 == +oo
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
(assert (= x (fp #b1 #b11010101011 #b0111000011101011101101000010011101000101010111001000)))
(assert (= y (fp #b1 #b00111011010 #b1011111111011111011011010110111100010001111000111110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

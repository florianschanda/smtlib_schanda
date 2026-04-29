(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1190501296010275655845589426462538540363311767578125p626 {+ 536154119309597 626 (3.11621e+188)}
; Y = 1.264572251895185406311838960391469299793243408203125p925 {+ 1191527495047730 925 (3.58666e+278)}
; 1.1190501296010275655845589426462538540363311767578125p626 * 1.264572251895185406311838960391469299793243408203125p925 == +oo
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
(assert (= x (fp #b0 #b11001110001 #b0001111001111010000100011011110100111000100100011101)))
(assert (= y (fp #b0 #b11110011100 #b0100001110111011000000011101000101010001101000110010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

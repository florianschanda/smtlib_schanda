(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.903821637520263010401322389952838420867919921875p552 {- 4070450789945648 552 (-2.80662e+166)}
; Y = 0.8586926364306177728025204487494193017482757568359375p-1022 {+ 3867207837454719 -1023 (1.91065e-308)}
; -1.903821637520263010401322389952838420867919921875p552 / 0.8586926364306177728025204487494193017482757568359375p-1022 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000100111 #b1110011101100000110110101101011010010001000100110000)))
(assert (= y (fp #b0 #b00000000000 #b1101101111010011010001111101011011001001000101111111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

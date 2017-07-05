(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1709598321862937364556955799343995749950408935546875p750 {+ 769934636529515 750 (6.93488e+225)}
; Y = 1.612031447376688131356559097184799611568450927734375p-889 {+ 2756344598344678 -889 (3.90578e-268)}
; 1.1709598321862937364556955799343995749950408935546875p750 / 1.612031447376688131356559097184799611568450927734375p-889 == +oo
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
(assert (= x (fp #b0 #b11011101101 #b0010101111000100000001100000100000101011011101101011)))
(assert (= y (fp #b0 #b00010000110 #b1001110010101110000101111100101010011011001111100110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

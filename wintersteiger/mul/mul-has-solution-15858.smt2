(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.590936118823522260612435275106690824031829833984375p1007 {+ 2661339684533382 1007 (2.18202e+303)}
; Y = 1.2435257720267329784036292039672844111919403076171875p582 {+ 1096742576154707 582 (1.9684e+175)}
; 1.590936118823522260612435275106690824031829833984375p1007 * 1.2435257720267329784036292039672844111919403076171875p582 == +oo
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
(assert (= x (fp #b0 #b11111101110 #b1001011101000111100101101110100001011111010010000110)))
(assert (= y (fp #b0 #b11001000101 #b0011111001010111101101000111101010010110100001010011)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

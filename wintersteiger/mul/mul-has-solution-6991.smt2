(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2903189084300417110995340408408083021640777587890625p-552 {- 1307480127824145 -552 (-8.75265e-167)}
; Y = 1.9190516720845562925745753091177903115749359130859375p-849 {+ 4139040767934239 -849 (5.11235e-256)}
; -1.2903189084300417110995340408408083021640777587890625p-552 * 1.9190516720845562925745753091177903115749359130859375p-849 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111010111 #b0100101001010010010101110000100100011110000100010001)))
(assert (= y (fp #b0 #b00010101110 #b1110101101000110111110000110101011101111111100011111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

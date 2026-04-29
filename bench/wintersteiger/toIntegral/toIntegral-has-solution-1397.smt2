(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.10577036542804751917401517857797443866729736328125 1004 {+ 476347378328596 1004 (1.89575e+302)}
; 1.10577036542804751917401517857797443866729736328125 1004 I == 1.10577036542804751917401517857797443866729736328125 1004
; [HW: 1.10577036542804751917401517857797443866729736328125 1004] 

; mpf : + 476347378328596 1004
; mpfd: + 476347378328596 1004 (1.89575e+302) class: Pos. norm. non-zero
; hwf : + 476347378328596 1004 (1.89575e+302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101011 #b0001101100010011110001000100010001100110010000010100)))
(assert (= r (fp #b0 #b11111101011 #b0001101100010011110001000100010001100110010000010100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

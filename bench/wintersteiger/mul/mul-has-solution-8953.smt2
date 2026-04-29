(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.162511752872228409927402026369236409664154052734375p846 {- 731887869678694 846 (-5.45474e+254)}
; Y = 1.12077372084549242714501815498806536197662353515625p903 {+ 543916484195908 903 (7.57886e+271)}
; -1.162511752872228409927402026369236409664154052734375p846 * 1.12077372084549242714501815498806536197662353515625p903 == -oo
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
(assert (= x (fp #b1 #b11101001101 #b0010100110011010010111101100011111001101010001100110)))
(assert (= y (fp #b0 #b11110000110 #b0001111011101011000001101100110100111111011001000100)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

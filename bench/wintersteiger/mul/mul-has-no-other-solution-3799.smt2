(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8846676597648428508335882725077681243419647216796875p855 {- 3984188942863675 855 (-4.52774e+257)}
; Y = 1.003469049790465472682399195036850869655609130859375p550 {+ 15623211343670 550 (3.6983e+165)}
; -1.8846676597648428508335882725077681243419647216796875p855 * 1.003469049790465472682399195036850869655609130859375p550 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010110 #b1110001001111001100101000110101010000100110100111011)))
(assert (= y (fp #b0 #b11000100101 #b0000000011100011010110001111111101100101111100110110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

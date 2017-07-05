(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.269734175582838187068546176305972039699554443359375p784 {- 1214774732643958 784 (-1.2919e+236)}
; Y = 1.0502236450565975989235312226810492575168609619140625p865 {+ 226187189162081 865 (2.58362e+260)}
; -1.269734175582838187068546176305972039699554443359375p784 * 1.0502236450565975989235312226810492575168609619140625p865 == -oo
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
(assert (= x (fp #b1 #b11100001111 #b0100010100001101010011001000011010111101111001110110)))
(assert (= y (fp #b0 #b11101100000 #b0000110011011011011101001111000100000001000001100001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

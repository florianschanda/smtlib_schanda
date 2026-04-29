(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5240935381494546962954927948885597288608551025390625p1009 {+ 2360307463117169 1009 (8.36137e+303)}
; Y = -1.63188904016895985904511690023355185985565185546875p496 {- 2845775245844428 496 (-3.33863e+149)}
; 1.5240935381494546962954927948885597288608551025390625p1009 * -1.63188904016895985904511690023355185985565185546875p496 == -oo
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
(assert (= x (fp #b0 #b11111110000 #b1000011000101010111111100111111001100101100101110001)))
(assert (= y (fp #b1 #b10111101111 #b1010000111000011011110101110101000111001111111001100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

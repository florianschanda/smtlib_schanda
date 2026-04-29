(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7649610394206665109351206410792656242847442626953125p800 {- 3445078252087861 800 (-1.17688e+241)}
; Y = 1.24897732954150786355285163153894245624542236328125p990 {+ 1121294208546836 990 (1.30692e+298)}
; -1.7649610394206665109351206410792656242847442626953125p800 * 1.24897732954150786355285163153894245624542236328125p990 == -oo
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
(assert (= x (fp #b1 #b11100011111 #b1100001111010100011111001001011100000110101000110101)))
(assert (= y (fp #b0 #b11111011101 #b0011111110111100111110100110111111010011100000010100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

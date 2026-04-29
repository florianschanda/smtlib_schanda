(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.59041316791873565961168424109928309917449951171875p466 {+ 2658984523033452 466 (3.03032e+140)}
; Y = -1.3024499631504280472427126369439065456390380859375p-966 {- 1362113541342488 -966 (-2.08826e-291)}
; 1.59041316791873565961168424109928309917449951171875p466 / -1.3024499631504280472427126369439065456390380859375p-966 == -oo
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
(assert (= x (fp #b0 #b10111010001 #b1001011100100101010100010011111101010110101101101100)))
(assert (= y (fp #b1 #b00000111001 #b0100110101101101010111000101110001101000010100011000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

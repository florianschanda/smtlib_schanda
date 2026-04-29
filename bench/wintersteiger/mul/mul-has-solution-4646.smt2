(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5803620579130515100274578799144364893436431884765625p1014 {+ 2613718347757193 1014 (2.77442e+305)}
; Y = -1.8096828802525364299214061247766949236392974853515625p291 {- 3646487517793593 291 (-7.19998e+087)}
; 1.5803620579130515100274578799144364893436431884765625p1014 * -1.8096828802525364299214061247766949236392974853515625p291 == -oo
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
(assert (= x (fp #b0 #b11111110101 #b1001010010010010100110111001101010010011011010001001)))
(assert (= y (fp #b1 #b10100100010 #b1100111101000111011000001001001011010000110100111001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)

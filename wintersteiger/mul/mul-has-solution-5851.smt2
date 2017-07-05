(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.904734760625012679469136855914257466793060302734375p746 {- 4074563130819942 746 (-7.05036e+224)}
; Y = 1.4580924641879728920201841901871375739574432373046875p976 {+ 2063065051018187 976 (9.31238e+293)}
; -1.904734760625012679469136855914257466793060302734375p746 * 1.4580924641879728920201841901871375739574432373046875p976 == -oo
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
(assert (= x (fp #b1 #b11011101001 #b1110011110011100101100101000000001110000010101100110)))
(assert (= y (fp #b0 #b11111001111 #b0111010101000101100011000011100000111011001111001011)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)

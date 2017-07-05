(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3696474696574678642235767256352119147777557373046875p570 {- 1664744206607819 570 (-5.29305e+171)}
; Y = 1.994511144852847639441506544244475662708282470703125p623 {+ 4478880021375090 623 (6.94263e+187)}
; -1.3696474696574678642235767256352119147777557373046875p570 * 1.994511144852847639441506544244475662708282470703125p623 == -oo
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
(assert (= x (fp #b1 #b11000111001 #b0101111010100001001101110111000100111010010111001011)))
(assert (= y (fp #b0 #b11001101110 #b1111111010011000010010000100101010100110100001110010)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)

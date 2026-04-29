(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.60658523555641696844986654468812048435211181640625p902 {- 2731817040820324 902 (-5.432e+271)}
; Y = 1.1880759686129598318160560666001401841640472412109375p950 {+ 847018862162671 950 (1.13068e+286)}
; -1.60658523555641696844986654468812048435211181640625p902 = 1.1880759686129598318160560666001401841640472412109375p950 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110000101 #b1001101101001001001010111000010011110011100001100100)))
(assert (= y (fp #b0 #b11110110101 #b0011000000100101101111110010011001011011001011101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

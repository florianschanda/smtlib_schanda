(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4175659864755763006627375943935476243495941162109375p456 {- 1880550021093999 456 (-2.63768e+137)}
; Y = -1.3876037022277796229019486418110318481922149658203125p109 {- 1745611888920453 109 (-9.00606e+032)}
; -1.4175659864755763006627375943935476243495941162109375p456 = -1.3876037022277796229019486418110318481922149658203125p109 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111000111 #b0110101011100101100110101011111111010101101001101111)))
(assert (= y (fp #b1 #b10001101100 #b0110001100111001111111110000100011100000011110000101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

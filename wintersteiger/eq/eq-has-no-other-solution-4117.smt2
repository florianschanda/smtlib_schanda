(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6544873010935334800564078250317834317684173583984375p532 {+ 2947548765323559 532 (2.32606e+160)}
; Y = -0.1949054804329100054616219495073892176151275634765625p-1022 {- 877776249050121 -1023 (-4.33679e-309)}
; 1.6544873010935334800564078250317834317684173583984375p532 = -0.1949054804329100054616219495073892176151275634765625p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000010011 #b1010011110001100011110101101000111011000000100100111)))
(assert (= y (fp #b1 #b00000000000 #b0011000111100101010100110101100001000101010000001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

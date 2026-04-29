(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0264432850430258437057773335254751145839691162109375p342 {+ 119089968666223 342 (9.19588e+102)}
; Y = -1.4449331482483966926366747429710812866687774658203125p-860 {- 2003800760656261 -860 (-1.87954e-259)}
; 1.0264432850430258437057773335254751145839691162109375p342 = -1.4449331482483966926366747429710812866687774658203125p-860 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101010101 #b0000011011000100111111001011010001110101011001101111)))
(assert (= y (fp #b1 #b00010100011 #b0111000111100111001000111000100010100010000110000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

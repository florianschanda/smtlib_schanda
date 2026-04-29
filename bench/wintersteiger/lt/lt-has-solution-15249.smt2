(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.669416365280902869727697179769165813922882080078125p628 {+ 3014783293234786 628 (1.85952e+189)}
; Y = 1.4012585263719989914221741855726577341556549072265625p256 {+ 1807107749848169 256 (1.62255e+077)}
; 1.669416365280902869727697179769165813922882080078125p628 < 1.4012585263719989914221741855726577341556549072265625p256 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110011 #b1010101101011110110111101111010001001001111001100010)))
(assert (= y (fp #b0 #b10011111111 #b0110011010111000111000001111100000000010010001101001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1107737723871731194691392374807037413120269775390625p-160 {+ 498880720045297 -160 (7.60022e-049)}
; Y = -1.6944606813183644700160357388085685670375823974609375p399 {- 3127572865608847 399 (-2.18776e+120)}
; 1.1107737723871731194691392374807037413120269775390625p-160 = -1.6944606813183644700160357388085685670375823974609375p399 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011111 #b0001110001011011101010111000000110101000010011110001)))
(assert (= y (fp #b1 #b10110001110 #b1011000111001000001011001101101010011110110010001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

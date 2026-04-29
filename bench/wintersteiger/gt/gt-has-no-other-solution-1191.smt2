(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.74239337209758193836250939057208597660064697265625p953 {- 3343442513940996 953 (-1.32658e+287)}
; Y = 1.360684322489345898787860278389416635036468505859375p-504 {+ 1624377780361398 -504 (2.598e-152)}
; -1.74239337209758193836250939057208597660064697265625p953 > 1.360684322489345898787860278389416635036468505859375p-504 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111000 #b1011111000001101011111011111010111101101001000000100)))
(assert (= y (fp #b0 #b01000000111 #b0101110001010101110011101100100101000101100010110110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

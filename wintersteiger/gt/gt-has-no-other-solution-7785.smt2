(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5326988290761593969335763176786713302135467529296875p925 {- 2399062248128091 925 (-4.34713e+278)}
; Y = -1.749901803181725057356743491254746913909912109375p-904 {- 3377257481373680 -904 (-1.29389e-272)}
; -1.5326988290761593969335763176786713302135467529296875p925 > -1.749901803181725057356743491254746913909912109375p-904 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110011100 #b1000100001011110111100110101000101111111111001011011)))
(assert (= y (fp #b1 #b00001110111 #b1011111111111001100100001000011111100000011111110000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

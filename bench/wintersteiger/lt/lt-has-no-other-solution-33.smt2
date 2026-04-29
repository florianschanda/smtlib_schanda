(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.019320455969160210685231504612602293491363525390625p-63 {- 87011598303338 -63 (-1.10515e-019)}
; Y = 1.25709693577386349971902745892293751239776611328125p72 {+ 1157861664149268 72 (5.93647e+021)}
; -1.019320455969160210685231504612602293491363525390625p-63 < 1.25709693577386349971902745892293751239776611328125p72 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000000 #b0000010011110010001011110111011010001000000001101010)))
(assert (= y (fp #b0 #b10001000111 #b0100000111010001000110101101001100001100111100010100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

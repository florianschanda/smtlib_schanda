(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.823461996128202589062539118458516895771026611328125p-313 {- 3708543138916738 -313 (-1.09272e-094)}
; Y = -1.660190649851456701213692213059403002262115478515625p272 {- 2973234364664506 272 (-1.25984e+082)}
; -1.823461996128202589062539118458516895771026611328125p-313 > -1.660190649851456701213692213059403002262115478515625p272 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011000110 #b1101001011001110011001111100011011011110100110000010)))
(assert (= y (fp #b1 #b10100001111 #b1010100100000010010000010010001000111100101010111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

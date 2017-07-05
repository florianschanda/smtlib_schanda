(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6025674175365376417090601535164751112461090087890625p42 {+ 2713722397083153 42 (7.04817e+012)}
; Y = 1.4957385305314849777147401255206204950809478759765625p-312 {+ 2232607861374793 -312 (1.79266e-094)}
; 1.6025674175365376417090601535164751112461090087890625p42 = 1.4957385305314849777147401255206204950809478759765625p-312 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000101001 #b1001101001000001110110111011011111110100011000010001)))
(assert (= y (fp #b0 #b01011000111 #b0111111011101000101110000110011111111111111101001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

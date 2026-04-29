(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.619314646911887312086264500976540148258209228515625p-673 {- 2789145213057466 -673 (-4.13185e-203)}
; Y = -1.16376205948212874119462867383845150470733642578125p178 {- 737518750061140 178 (-4.45865e+053)}
; -1.619314646911887312086264500976540148258209228515625p-673 = -1.16376205948212874119462867383845150470733642578125p178 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011110 #b1001111010001011011001111001101001101011100110111010)))
(assert (= y (fp #b1 #b10010110001 #b0010100111101100010011110111000111001101001001010100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

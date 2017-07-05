(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7923204160697034925675552585744298994541168212890625p574 {- 3568293930569553 574 (-1.10824e+173)}
; -1.7923204160697034925675552585744298994541168212890625p574 | == 1.7923204160697034925675552585744298994541168212890625p574
; [HW: 1.7923204160697034925675552585744298994541168212890625p574] 

; mpf : + 3568293930569553 574
; mpfd: + 3568293930569553 574 (1.10824e+173) class: Pos. norm. non-zero
; hwf : + 3568293930569553 574 (1.10824e+173) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111101 #b1100101011010101100000101100001011111000111101010001)))
(assert (= r (fp #b0 #b11000111101 #b1100101011010101100000101100001011111000111101010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

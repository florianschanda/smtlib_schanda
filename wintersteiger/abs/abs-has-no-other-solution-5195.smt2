(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3699340208957340170314864735701121389865875244140625p508 {+ 1666034718657697 508 (1.14799e+153)}
; 1.3699340208957340170314864735701121389865875244140625p508 | == 1.3699340208957340170314864735701121389865875244140625p508
; [HW: 1.3699340208957340170314864735701121389865875244140625p508] 

; mpf : + 1666034718657697 508
; mpfd: + 1666034718657697 508 (1.14799e+153) class: Pos. norm. non-zero
; hwf : + 1666034718657697 508 (1.14799e+153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111111011 #b0101111010110011111111101111100101101100110010100001)))
(assert (= r (fp #b0 #b10111111011 #b0101111010110011111111101111100101101100110010100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

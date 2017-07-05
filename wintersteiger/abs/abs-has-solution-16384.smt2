(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7572550431777858026549665737547911703586578369140625p586 {- 3410373530279905 586 (-4.45054e+176)}
; -1.7572550431777858026549665737547911703586578369140625p586 | == 1.7572550431777858026549665737547911703586578369140625p586
; [HW: 1.7572550431777858026549665737547911703586578369140625p586] 

; mpf : + 3410373530279905 586
; mpfd: + 3410373530279905 586 (4.45054e+176) class: Pos. norm. non-zero
; hwf : + 3410373530279905 586 (4.45054e+176) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001001001 #b1100000111011011011101110110110100101101111111100001)))
(assert (= r (fp #b0 #b11001001001 #b1100000111011011011101110110110100101101111111100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

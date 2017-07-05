(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68067254210251793011821064283140003681182861328125p-902 {- 3065476606974228 -902 (-4.97081e-272)}
; -1.68067254210251793011821064283140003681182861328125p-902 | == 1.68067254210251793011821064283140003681182861328125p-902
; [HW: 1.68067254210251793011821064283140003681182861328125p-902] 

; mpf : + 3065476606974228 -902
; mpfd: + 3065476606974228 -902 (4.97081e-272) class: Pos. norm. non-zero
; hwf : + 3065476606974228 -902 (4.97081e-272) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001111001 #b1010111001000000100011100100001110011101100100010100)))
(assert (= r (fp #b0 #b00001111001 #b1010111001000000100011100100001110011101100100010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

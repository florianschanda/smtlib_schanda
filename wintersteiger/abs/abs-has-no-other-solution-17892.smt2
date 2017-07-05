(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9985280233104785185815899239969439804553985595703125p-507 {- 4496970433700069 -507 (-4.76982e-153)}
; -1.9985280233104785185815899239969439804553985595703125p-507 | == 1.9985280233104785185815899239969439804553985595703125p-507
; [HW: 1.9985280233104785185815899239969439804553985595703125p-507] 

; mpf : + 4496970433700069 -507
; mpfd: + 4496970433700069 -507 (4.76982e-153) class: Pos. norm. non-zero
; hwf : + 4496970433700069 -507 (4.76982e-153) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000000100 #b1111111110011111100010000101010001000010000011100101)))
(assert (= r (fp #b0 #b01000000100 #b1111111110011111100010000101010001000010000011100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

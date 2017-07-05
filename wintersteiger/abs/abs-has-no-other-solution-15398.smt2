(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.249700976494313664488799986429512500762939453125p669 {- 1124553224693840 669 (-3.06107e+201)}
; -1.249700976494313664488799986429512500762939453125p669 | == 1.249700976494313664488799986429512500762939453125p669
; [HW: 1.249700976494313664488799986429512500762939453125p669] 

; mpf : + 1124553224693840 669
; mpfd: + 1124553224693840 669 (3.06107e+201) class: Pos. norm. non-zero
; hwf : + 1124553224693840 669 (3.06107e+201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011100 #b0011111111101100011001110011011111010010100001010000)))
(assert (= r (fp #b0 #b11010011100 #b0011111111101100011001110011011111010010100001010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

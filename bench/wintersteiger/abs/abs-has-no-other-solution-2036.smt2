(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3973195203937434083485413793823681771755218505859375p-592 {- 1789368043992287 -592 (-8.62062e-179)}
; -1.3973195203937434083485413793823681771755218505859375p-592 | == 1.3973195203937434083485413793823681771755218505859375p-592
; [HW: 1.3973195203937434083485413793823681771755218505859375p-592] 

; mpf : + 1789368043992287 -592
; mpfd: + 1789368043992287 -592 (8.62062e-179) class: Pos. norm. non-zero
; hwf : + 1789368043992287 -592 (8.62062e-179) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110101111 #b0110010110110110101110110110101000100111010011011111)))
(assert (= r (fp #b0 #b00110101111 #b0110010110110110101110110110101000100111010011011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

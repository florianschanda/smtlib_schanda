(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9073121549135210184289235257892869412899017333984375p111 {- 4086170682777255 111 (-4.95167e+033)}
; -1.9073121549135210184289235257892869412899017333984375p111 | == 1.9073121549135210184289235257892869412899017333984375p111
; [HW: 1.9073121549135210184289235257892869412899017333984375p111] 

; mpf : + 4086170682777255 111
; mpfd: + 4086170682777255 111 (4.95167e+033) class: Pos. norm. non-zero
; hwf : + 4086170682777255 111 (4.95167e+033) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001101110 #b1110100001000101100111000000000010011101111010100111)))
(assert (= r (fp #b0 #b10001101110 #b1110100001000101100111000000000010011101111010100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

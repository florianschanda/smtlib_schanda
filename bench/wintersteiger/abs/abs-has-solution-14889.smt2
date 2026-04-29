(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.25938857194271225381498879869468510150909423828125p856 {- 1168182275945364 856 (-6.05112e+257)}
; -1.25938857194271225381498879869468510150909423828125p856 | == 1.25938857194271225381498879869468510150909423828125p856
; [HW: 1.25938857194271225381498879869468510150909423828125p856] 

; mpf : + 1168182275945364 856
; mpfd: + 1168182275945364 856 (6.05112e+257) class: Pos. norm. non-zero
; hwf : + 1168182275945364 856 (6.05112e+257) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010111 #b0100001001100111010010100001100101110011001110010100)))
(assert (= r (fp #b0 #b11101010111 #b0100001001100111010010100001100101110011001110010100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

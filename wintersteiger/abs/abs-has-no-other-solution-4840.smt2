(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5734993542164741331390587220084853470325469970703125p160 {+ 2582811477946533 160 (2.29967e+048)}
; 1.5734993542164741331390587220084853470325469970703125p160 | == 1.5734993542164741331390587220084853470325469970703125p160
; [HW: 1.5734993542164741331390587220084853470325469970703125p160] 

; mpf : + 2582811477946533 160
; mpfd: + 2582811477946533 160 (2.29967e+048) class: Pos. norm. non-zero
; hwf : + 2582811477946533 160 (2.29967e+048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011111 #b1001001011010000110110101000101010100011000010100101)))
(assert (= r (fp #b0 #b10010011111 #b1001001011010000110110101000101010100011000010100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

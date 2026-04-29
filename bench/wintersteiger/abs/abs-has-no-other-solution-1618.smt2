(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.84902010018832552162848514853976666927337646484375p198 {- 3823646606838204 198 (-7.42815e+059)}
; -1.84902010018832552162848514853976666927337646484375p198 | == 1.84902010018832552162848514853976666927337646484375p198
; [HW: 1.84902010018832552162848514853976666927337646484375p198] 

; mpf : + 3823646606838204 198
; mpfd: + 3823646606838204 198 (7.42815e+059) class: Pos. norm. non-zero
; hwf : + 3823646606838204 198 (7.42815e+059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011000101 #b1101100101011001011000011001101111110100100110111100)))
(assert (= r (fp #b0 #b10011000101 #b1101100101011001011000011001101111110100100110111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

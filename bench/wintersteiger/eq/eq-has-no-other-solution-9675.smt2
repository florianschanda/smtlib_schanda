(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.629966619018010209885005679097957909107208251953125p-848 {- 2837117430665362 -848 (-8.68445e-256)}
; -zero = -1.629966619018010209885005679097957909107208251953125p-848 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b00010101111 #b1010000101000101011111100000101001000001000010010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

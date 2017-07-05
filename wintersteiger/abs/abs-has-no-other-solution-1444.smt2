(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7332514075271909792519409165834076702594757080078125p492 {+ 3302270765708349 492 (2.21625e+148)}
; 1.7332514075271909792519409165834076702594757080078125p492 | == 1.7332514075271909792519409165834076702594757080078125p492
; [HW: 1.7332514075271909792519409165834076702594757080078125p492] 

; mpf : + 3302270765708349 492
; mpfd: + 3302270765708349 492 (2.21625e+148) class: Pos. norm. non-zero
; hwf : + 3302270765708349 492 (2.21625e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101011 #b1011101110110110010111010011111100010011010000111101)))
(assert (= r (fp #b0 #b10111101011 #b1011101110110110010111010011111100010011010000111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

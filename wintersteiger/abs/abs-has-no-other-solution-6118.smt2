(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.78779816067886176966794664622284471988677978515625p39 {- 3547927502876484 39 (-9.82852e+011)}
; -1.78779816067886176966794664622284471988677978515625p39 | == 1.78779816067886176966794664622284471988677978515625p39
; [HW: 1.78779816067886176966794664622284471988677978515625p39] 

; mpf : + 3547927502876484 39
; mpfd: + 3547927502876484 39 (9.82852e+011) class: Pos. norm. non-zero
; hwf : + 3547927502876484 39 (9.82852e+011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000100110 #b1100100110101101001000111110011111110110111101000100)))
(assert (= r (fp #b0 #b10000100110 #b1100100110101101001000111110011111110110111101000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

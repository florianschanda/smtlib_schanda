(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6721508034912078155542758395313285291194915771484375p-469 {- 3027098108139783 -469 (-1.097e-141)}
; -1.6721508034912078155542758395313285291194915771484375p-469 | == 1.6721508034912078155542758395313285291194915771484375p-469
; [HW: 1.6721508034912078155542758395313285291194915771484375p-469] 

; mpf : + 3027098108139783 -469
; mpfd: + 3027098108139783 -469 (1.097e-141) class: Pos. norm. non-zero
; hwf : + 3027098108139783 -469 (1.097e-141) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101010 #b1010110000010010000100110011011011111001100100000111)))
(assert (= r (fp #b0 #b01000101010 #b1010110000010010000100110011011011111001100100000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.504557690788429713535379050881601870059967041015625p-469 {+ 2272325828221690 -469 (9.87054e-142)}
; 1.504557690788429713535379050881601870059967041015625p-469 | == 1.504557690788429713535379050881601870059967041015625p-469
; [HW: 1.504557690788429713535379050881601870059967041015625p-469] 

; mpf : + 2272325828221690 -469
; mpfd: + 2272325828221690 -469 (9.87054e-142) class: Pos. norm. non-zero
; hwf : + 2272325828221690 -469 (9.87054e-142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000101010 #b1000000100101010101100010101110011100001101011111010)))
(assert (= r (fp #b0 #b01000101010 #b1000000100101010101100010101110011100001101011111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

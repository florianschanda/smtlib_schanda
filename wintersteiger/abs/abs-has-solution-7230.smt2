(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0008138163618485183548045824863947927951812744140625p-44 {+ 3665103063969 -44 (5.68897e-014)}
; 1.0008138163618485183548045824863947927951812744140625p-44 | == 1.0008138163618485183548045824863947927951812744140625p-44
; [HW: 1.0008138163618485183548045824863947927951812744140625p-44] 

; mpf : + 3665103063969 -44
; mpfd: + 3665103063969 -44 (5.68897e-014) class: Pos. norm. non-zero
; hwf : + 3665103063969 -44 (5.68897e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111010011 #b0000000000110101010101011001001010101000101110100001)))
(assert (= r (fp #b0 #b01111010011 #b0000000000110101010101011001001010101000101110100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

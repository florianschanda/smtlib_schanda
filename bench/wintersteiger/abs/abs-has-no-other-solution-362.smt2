(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9425383928288664225902948601287789642810821533203125p925 {+ 4244815554726469 925 (5.50954e+278)}
; 1.9425383928288664225902948601287789642810821533203125p925 | == 1.9425383928288664225902948601287789642810821533203125p925
; [HW: 1.9425383928288664225902948601287789642810821533203125p925] 

; mpf : + 4244815554726469 925
; mpfd: + 4244815554726469 925 (5.50954e+278) class: Pos. norm. non-zero
; hwf : + 4244815554726469 925 (5.50954e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011100 #b1111000101001010001100100011010001101100101001000101)))
(assert (= r (fp #b0 #b11110011100 #b1111000101001010001100100011010001101100101001000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

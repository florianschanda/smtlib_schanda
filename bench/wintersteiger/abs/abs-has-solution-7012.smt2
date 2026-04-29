(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8013021185422728454028629130334593355655670166015625p-234 {- 3608743922478169 -234 (-6.52481e-071)}
; -1.8013021185422728454028629130334593355655670166015625p-234 | == 1.8013021185422728454028629130334593355655670166015625p-234
; [HW: 1.8013021185422728454028629130334593355655670166015625p-234] 

; mpf : + 3608743922478169 -234
; mpfd: + 3608743922478169 -234 (6.52481e-071) class: Pos. norm. non-zero
; hwf : + 3608743922478169 -234 (6.52481e-071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100010101 #b1100110100100010001000101011100101011010110001011001)))
(assert (= r (fp #b0 #b01100010101 #b1100110100100010001000101011100101011010110001011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

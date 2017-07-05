(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.942693250745550326286092968075536191463470458984375p214 {- 4245512972782342 214 (-5.11474e+064)}
; -1.942693250745550326286092968075536191463470458984375p214 | == 1.942693250745550326286092968075536191463470458984375p214
; [HW: 1.942693250745550326286092968075536191463470458984375p214] 

; mpf : + 4245512972782342 214
; mpfd: + 4245512972782342 214 (5.11474e+064) class: Pos. norm. non-zero
; hwf : + 4245512972782342 214 (5.11474e+064) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011010101 #b1111000101010100010110000100101000011100101100000110)))
(assert (= r (fp #b0 #b10011010101 #b1111000101010100010110000100101000011100101100000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

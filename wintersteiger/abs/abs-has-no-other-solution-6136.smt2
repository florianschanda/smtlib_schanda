(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.886455730889346593670552465482614934444427490234375p-436 {- 3992241699313702 -436 (-1.06309e-131)}
; -1.886455730889346593670552465482614934444427490234375p-436 | == 1.886455730889346593670552465482614934444427490234375p-436
; [HW: 1.886455730889346593670552465482614934444427490234375p-436] 

; mpf : + 3992241699313702 -436
; mpfd: + 3992241699313702 -436 (1.06309e-131) class: Pos. norm. non-zero
; hwf : + 3992241699313702 -436 (1.06309e-131) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001001011 #b1110001011101110110000110100010110000101100000100110)))
(assert (= r (fp #b0 #b01001001011 #b1110001011101110110000110100010110000101100000100110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

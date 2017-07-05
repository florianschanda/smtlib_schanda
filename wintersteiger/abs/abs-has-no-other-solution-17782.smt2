(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1467890526932180694785756713827140629291534423828125p-956 {- 661079123011245 -956 (-1.88282e-288)}
; -1.1467890526932180694785756713827140629291534423828125p-956 | == 1.1467890526932180694785756713827140629291534423828125p-956
; [HW: 1.1467890526932180694785756713827140629291534423828125p-956] 

; mpf : + 661079123011245 -956
; mpfd: + 661079123011245 -956 (1.88282e-288) class: Pos. norm. non-zero
; hwf : + 661079123011245 -956 (1.88282e-288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001000011 #b0010010110010011111101111010010010111010011010101101)))
(assert (= r (fp #b0 #b00001000011 #b0010010110010011111101111010010010111010011010101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

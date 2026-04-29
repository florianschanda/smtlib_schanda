(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.586259554044620045942792785353958606719970703125p-937 {+ 2640278309137744 -937 (1.36543e-282)}
; 1.586259554044620045942792785353958606719970703125p-937 | == 1.586259554044620045942792785353958606719970703125p-937
; [HW: 1.586259554044620045942792785353958606719970703125p-937] 

; mpf : + 2640278309137744 -937
; mpfd: + 2640278309137744 -937 (1.36543e-282) class: Pos. norm. non-zero
; hwf : + 2640278309137744 -937 (1.36543e-282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001010110 #b1001011000010101000110110010101110010110110101010000)))
(assert (= r (fp #b0 #b00001010110 #b1001011000010101000110110010101110010110110101010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

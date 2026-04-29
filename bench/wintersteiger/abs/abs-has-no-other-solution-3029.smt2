(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3628331865371061670799690546118654310703277587890625p-45 {- 1634055403686161 -45 (-3.8734e-014)}
; -1.3628331865371061670799690546118654310703277587890625p-45 | == 1.3628331865371061670799690546118654310703277587890625p-45
; [HW: 1.3628331865371061670799690546118654310703277587890625p-45] 

; mpf : + 1634055403686161 -45
; mpfd: + 1634055403686161 -45 (3.8734e-014) class: Pos. norm. non-zero
; hwf : + 1634055403686161 -45 (3.8734e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111010010 #b0101110011100010101000101011111000010100100100010001)))
(assert (= r (fp #b0 #b01111010010 #b0101110011100010101000101011111000010100100100010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

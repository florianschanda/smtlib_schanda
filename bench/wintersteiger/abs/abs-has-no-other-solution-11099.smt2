(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9981036374300302771445103644509799778461456298828125p-273 {- 4495059169607021 -273 (-1.31653e-082)}
; -1.9981036374300302771445103644509799778461456298828125p-273 | == 1.9981036374300302771445103644509799778461456298828125p-273
; [HW: 1.9981036374300302771445103644509799778461456298828125p-273] 

; mpf : + 4495059169607021 -273
; mpfd: + 4495059169607021 -273 (1.31653e-082) class: Pos. norm. non-zero
; hwf : + 4495059169607021 -273 (1.31653e-082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011101110 #b1111111110000011101110000101000011000111110101101101)))
(assert (= r (fp #b0 #b01011101110 #b1111111110000011101110000101000011000111110101101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

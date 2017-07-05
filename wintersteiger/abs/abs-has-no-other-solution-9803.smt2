(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7452731230326252731543945628800429403781890869140625p607 {+ 3356411759178977 607 (9.26981e+182)}
; 1.7452731230326252731543945628800429403781890869140625p607 | == 1.7452731230326252731543945628800429403781890869140625p607
; [HW: 1.7452731230326252731543945628800429403781890869140625p607] 

; mpf : + 3356411759178977 607
; mpfd: + 3356411759178977 607 (9.26981e+182) class: Pos. norm. non-zero
; hwf : + 3356411759178977 607 (9.26981e+182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011110 #b1011111011001010001110000010101000000011010011100001)))
(assert (= r (fp #b0 #b11001011110 #b1011111011001010001110000010101000000011010011100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

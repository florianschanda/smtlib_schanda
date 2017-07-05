(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.75713710471167861015828748350031673908233642578125p8 {- 3409842382647892 8 (-449.827)}
; -1.75713710471167861015828748350031673908233642578125p8 | == 1.75713710471167861015828748350031673908233642578125p8
; [HW: 1.75713710471167861015828748350031673908233642578125p8] 

; mpf : + 3409842382647892 8
; mpfd: + 3409842382647892 8 (449.827) class: Pos. norm. non-zero
; hwf : + 3409842382647892 8 (449.827) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000111 #b1100000111010011101111001011111101010011001001010100)))
(assert (= r (fp #b0 #b10000000111 #b1100000111010011101111001011111101010011001001010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

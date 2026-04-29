(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7317306414591542296221859942306764423847198486328125p253 {+ 3295421844211021 253 (2.50651e+076)}
; 1.7317306414591542296221859942306764423847198486328125p253 | == 1.7317306414591542296221859942306764423847198486328125p253
; [HW: 1.7317306414591542296221859942306764423847198486328125p253] 

; mpf : + 3295421844211021 253
; mpfd: + 3295421844211021 253 (2.50651e+076) class: Pos. norm. non-zero
; hwf : + 3295421844211021 253 (2.50651e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011111100 #b1011101101010010101100110000011010001100010101001101)))
(assert (= r (fp #b0 #b10011111100 #b1011101101010010101100110000011010001100010101001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

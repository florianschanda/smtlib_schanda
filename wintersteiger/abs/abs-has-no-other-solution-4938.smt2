(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3546761526046073864648633389151655137538909912109375p-335 {+ 1597319388707311 -335 (1.93547e-101)}
; 1.3546761526046073864648633389151655137538909912109375p-335 | == 1.3546761526046073864648633389151655137538909912109375p-335
; [HW: 1.3546761526046073864648633389151655137538909912109375p-335] 

; mpf : + 1597319388707311 -335
; mpfd: + 1597319388707311 -335 (1.93547e-101) class: Pos. norm. non-zero
; hwf : + 1597319388707311 -335 (1.93547e-101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010110000 #b0101101011001100000011100110110000011011100111101111)))
(assert (= r (fp #b0 #b01010110000 #b0101101011001100000011100110110000011011100111101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

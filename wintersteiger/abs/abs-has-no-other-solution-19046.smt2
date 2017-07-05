(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2606576068940757995306967131909914314746856689453125p-300 {+ 1173897501279445 -300 (6.18869e-091)}
; 1.2606576068940757995306967131909914314746856689453125p-300 | == 1.2606576068940757995306967131909914314746856689453125p-300
; [HW: 1.2606576068940757995306967131909914314746856689453125p-300] 

; mpf : + 1173897501279445 -300
; mpfd: + 1173897501279445 -300 (6.18869e-091) class: Pos. norm. non-zero
; hwf : + 1173897501279445 -300 (6.18869e-091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010011 #b0100001010111010011101001111100100010000010011010101)))
(assert (= r (fp #b0 #b01011010011 #b0100001010111010011101001111100100010000010011010101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

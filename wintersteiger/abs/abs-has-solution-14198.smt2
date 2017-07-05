(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.272174756139907714214132283814251422882080078125p91 {+ 1225766130331344 91 (3.14975e+027)}
; 1.272174756139907714214132283814251422882080078125p91 | == 1.272174756139907714214132283814251422882080078125p91
; [HW: 1.272174756139907714214132283814251422882080078125p91] 

; mpf : + 1225766130331344 91
; mpfd: + 1225766130331344 91 (3.14975e+027) class: Pos. norm. non-zero
; hwf : + 1225766130331344 91 (3.14975e+027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011010 #b0100010110101101001111101010110001101010111011010000)))
(assert (= r (fp #b0 #b10001011010 #b0100010110101101001111101010110001101010111011010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

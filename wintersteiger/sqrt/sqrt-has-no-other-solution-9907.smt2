(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.864957953710405291758434032090008258819580078125p-386 {+ 3895424318021328 -386 (1.18329e-116)}
; 1.864957953710405291758434032090008258819580078125p-386 S == 1.3656346340476301914890200350782833993434906005859375p-193
; [HW: 1.3656346340476301914890200350782833993434906005859375p-193] 

; mpf : + 1646672001650655 -193
; mpfd: + 1646672001650655 -193 (1.08779e-058) class: Pos. norm. non-zero
; hwf : + 1646672001650655 -193 (1.08779e-058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111101 #b1101110101101101111000100110101110011001111011010000)))
(assert (= r (fp #b0 #b01100111110 #b0101110110011010001110110011101110000100111111011111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

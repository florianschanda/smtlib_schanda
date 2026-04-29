(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.520870157796962995888634395669214427471160888671875 725 {- 2345790648562814 725 (-2.68435e+218)}
; -1.520870157796962995888634395669214427471160888671875 725 I == -1.520870157796962995888634395669214427471160888671875 725
; [HW: -1.520870157796962995888634395669214427471160888671875 725] 

; mpf : - 2345790648562814 725
; mpfd: - 2345790648562814 725 (-2.68435e+218) class: Neg. norm. non-zero
; hwf : - 2345790648562814 725 (-2.68435e+218) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010100 #b1000010101010111101111110010010100110011010001111110)))
(assert (= r (fp #b1 #b11011010100 #b1000010101010111101111110010010100110011010001111110)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

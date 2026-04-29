(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4061589560046277025406880056834779679775238037109375p-151 {- 1829177322915631 -151 (-4.92612e-046)}
; -1.4061589560046277025406880056834779679775238037109375p-151 | == 1.4061589560046277025406880056834779679775238037109375p-151
; [HW: 1.4061589560046277025406880056834779679775238037109375p-151] 

; mpf : + 1829177322915631 -151
; mpfd: + 1829177322915631 -151 (4.92612e-046) class: Pos. norm. non-zero
; hwf : + 1829177322915631 -151 (4.92612e-046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101101000 #b0110011111111010000010001000100100000100011100101111)))
(assert (= r (fp #b0 #b01101101000 #b0110011111111010000010001000100100000100011100101111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

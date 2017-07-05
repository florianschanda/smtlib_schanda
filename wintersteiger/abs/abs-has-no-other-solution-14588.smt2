(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7094424438750757122562617951189167797565460205078125p740 {- 3195044725876605 740 (-9.8867e+222)}
; -1.7094424438750757122562617951189167797565460205078125p740 | == 1.7094424438750757122562617951189167797565460205078125p740
; [HW: 1.7094424438750757122562617951189167797565460205078125p740] 

; mpf : + 3195044725876605 740
; mpfd: + 3195044725876605 740 (9.8867e+222) class: Pos. norm. non-zero
; hwf : + 3195044725876605 740 (9.8867e+222) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011100011 #b1011010110011110000001010001111011010110011101111101)))
(assert (= r (fp #b0 #b11011100011 #b1011010110011110000001010001111011010110011101111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

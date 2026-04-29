(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5157899766281965892034122589393518865108489990234375p448 {- 2322911546544183 448 (-1.10173e+135)}
; -1.5157899766281965892034122589393518865108489990234375p448 | == 1.5157899766281965892034122589393518865108489990234375p448
; [HW: 1.5157899766281965892034122589393518865108489990234375p448] 

; mpf : + 2322911546544183 448
; mpfd: + 2322911546544183 448 (1.10173e+135) class: Pos. norm. non-zero
; hwf : + 2322911546544183 448 (1.10173e+135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111111 #b1000010000001010110011111101100100111001000000110111)))
(assert (= r (fp #b0 #b10110111111 #b1000010000001010110011111101100100111001000000110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

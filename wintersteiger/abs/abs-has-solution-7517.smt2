(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8007512182953195889467679080553352832794189453125p-973 {- 3606262888331272 -973 (-2.25563e-293)}
; -1.8007512182953195889467679080553352832794189453125p-973 | == 1.8007512182953195889467679080553352832794189453125p-973
; [HW: 1.8007512182953195889467679080553352832794189453125p-973] 

; mpf : + 3606262888331272 -973
; mpfd: + 3606262888331272 -973 (2.25563e-293) class: Pos. norm. non-zero
; hwf : + 3606262888331272 -973 (2.25563e-293) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110010 #b1100110011111110000010000010011011001111100000001000)))
(assert (= r (fp #b0 #b00000110010 #b1100110011111110000010000010011011001111100000001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

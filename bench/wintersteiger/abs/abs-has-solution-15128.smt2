(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4517454218708236712842563065350987017154693603515625p-891 {- 2034480513603769 -891 (-8.79355e-269)}
; -1.4517454218708236712842563065350987017154693603515625p-891 | == 1.4517454218708236712842563065350987017154693603515625p-891
; [HW: 1.4517454218708236712842563065350987017154693603515625p-891] 

; mpf : + 2034480513603769 -891
; mpfd: + 2034480513603769 -891 (8.79355e-269) class: Pos. norm. non-zero
; hwf : + 2034480513603769 -891 (8.79355e-269) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000100 #b0111001110100101100101101000010100001101100010111001)))
(assert (= r (fp #b0 #b00010000100 #b0111001110100101100101101000010100001101100010111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

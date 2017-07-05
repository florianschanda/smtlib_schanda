(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.143609680405659023705311483354307711124420166015625p-569 {+ 646760503161722 -569 (5.91848e-172)}
; 1.143609680405659023705311483354307711124420166015625p-569 | == 1.143609680405659023705311483354307711124420166015625p-569
; [HW: 1.143609680405659023705311483354307711124420166015625p-569] 

; mpf : + 646760503161722 -569
; mpfd: + 646760503161722 -569 (5.91848e-172) class: Pos. norm. non-zero
; hwf : + 646760503161722 -569 (5.91848e-172) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000110 #b0010010011000011100110101010000010111011001101111010)))
(assert (= r (fp #b0 #b00111000110 #b0010010011000011100110101010000010111011001101111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0683908895987606069155617660726420581340789794921875p-738 {- 308005184912515 -738 (-7.38913e-223)}
; -1.0683908895987606069155617660726420581340789794921875p-738 | == 1.0683908895987606069155617660726420581340789794921875p-738
; [HW: 1.0683908895987606069155617660726420581340789794921875p-738] 

; mpf : + 308005184912515 -738
; mpfd: + 308005184912515 -738 (7.38913e-223) class: Pos. norm. non-zero
; hwf : + 308005184912515 -738 (7.38913e-223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100011101 #b0001000110000010000100001011101000101011110010000011)))
(assert (= r (fp #b0 #b00100011101 #b0001000110000010000100001011101000101011110010000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

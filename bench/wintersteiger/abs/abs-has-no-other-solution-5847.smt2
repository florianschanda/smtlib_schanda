(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.21645380149392057234081221395172178745269775390625p-291 {+ 974821259750948 -291 (3.0575e-088)}
; 1.21645380149392057234081221395172178745269775390625p-291 | == 1.21645380149392057234081221395172178745269775390625p-291
; [HW: 1.21645380149392057234081221395172178745269775390625p-291] 

; mpf : + 974821259750948 -291
; mpfd: + 974821259750948 -291 (3.0575e-088) class: Pos. norm. non-zero
; hwf : + 974821259750948 -291 (3.0575e-088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011100 #b0011011101101001100001000010111010000010111000100100)))
(assert (= r (fp #b0 #b01011011100 #b0011011101101001100001000010111010000010111000100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

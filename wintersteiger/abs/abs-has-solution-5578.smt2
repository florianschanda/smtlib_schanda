(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3378710234278996527024219176382757723331451416015625p-919 {+ 1521635815209177 -919 (3.0189e-277)}
; 1.3378710234278996527024219176382757723331451416015625p-919 | == 1.3378710234278996527024219176382757723331451416015625p-919
; [HW: 1.3378710234278996527024219176382757723331451416015625p-919] 

; mpf : + 1521635815209177 -919
; mpfd: + 1521635815209177 -919 (3.0189e-277) class: Pos. norm. non-zero
; hwf : + 1521635815209177 -919 (3.0189e-277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101000 #b0101011001111110101101110010001111100011100011011001)))
(assert (= r (fp #b0 #b00001101000 #b0101011001111110101101110010001111100011100011011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

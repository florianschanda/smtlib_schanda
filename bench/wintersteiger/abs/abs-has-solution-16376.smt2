(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7993187817939417794121936822193674743175506591796875p952 {+ 3599811767837435 952 (6.84958e+286)}
; 1.7993187817939417794121936822193674743175506591796875p952 | == 1.7993187817939417794121936822193674743175506591796875p952
; [HW: 1.7993187817939417794121936822193674743175506591796875p952] 

; mpf : + 3599811767837435 952
; mpfd: + 3599811767837435 952 (6.84958e+286) class: Pos. norm. non-zero
; hwf : + 3599811767837435 952 (6.84958e+286) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110111 #b1100110010100000001001111101101011100010001011111011)))
(assert (= r (fp #b0 #b11110110111 #b1100110010100000001001111101101011100010001011111011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

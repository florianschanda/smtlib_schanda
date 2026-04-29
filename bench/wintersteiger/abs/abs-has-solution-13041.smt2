(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3742313551058706888596816497738473117351531982421875p923 {+ 1685388191405155 923 (9.74419e+277)}
; 1.3742313551058706888596816497738473117351531982421875p923 | == 1.3742313551058706888596816497738473117351531982421875p923
; [HW: 1.3742313551058706888596816497738473117351531982421875p923] 

; mpf : + 1685388191405155 923
; mpfd: + 1685388191405155 923 (9.74419e+277) class: Pos. norm. non-zero
; hwf : + 1685388191405155 923 (9.74419e+277) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011010 #b0101111111001101101000000100011101010001010001100011)))
(assert (= r (fp #b0 #b11110011010 #b0101111111001101101000000100011101010001010001100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

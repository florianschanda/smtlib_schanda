(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4940155420500536020966819705790840089321136474609375p-702 {+ 2224848211091855 -702 (7.10065e-212)}
; 1.4940155420500536020966819705790840089321136474609375p-702 S == 1.222299284974859734376195774530060589313507080078125p-351
; [HW: 1.222299284974859734376195774530060589313507080078125p-351] 

; mpf : + 1001146976977506 -351
; mpfd: + 1001146976977506 -351 (2.6647e-106) class: Pos. norm. non-zero
; hwf : + 1001146976977506 -351 (2.6647e-106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000001 #b0111111001110111110011010111010011010010000110001111)))
(assert (= r (fp #b0 #b01010100000 #b0011100011101000100110110001111011100100001001100010)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

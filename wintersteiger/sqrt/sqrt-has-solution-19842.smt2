(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.317395414746077353385089736548252403736114501953125p195 {+ 1429421871579538 195 (6.61554e+058)}
; 1.317395414746077353385089736548252403736114501953125p195 S == 1.6232038779808759532130579827935434877872467041015625p97
; [HW: 1.6232038779808759532130579827935434877872467041015625p97] 

; mpf : + 2806660752650521 97
; mpfd: + 2806660752650521 97 (2.57207e+029) class: Pos. norm. non-zero
; hwf : + 2806660752650521 97 (2.57207e+029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000010 #b0101000101000000110100110110111000111100000110010010)))
(assert (= r (fp #b0 #b10001100000 #b1001111110001010010010100001001010101011000100011001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

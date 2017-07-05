(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.244677011578247505241279213805682957172393798828125p-287 {+ 1101927298169922 -287 (5.00551e-087)}
; 1.244677011578247505241279213805682957172393798828125p-287 | == 1.244677011578247505241279213805682957172393798828125p-287
; [HW: 1.244677011578247505241279213805682957172393798828125p-287] 

; mpf : + 1101927298169922 -287
; mpfd: + 1101927298169922 -287 (5.00551e-087) class: Pos. norm. non-zero
; hwf : + 1101927298169922 -287 (5.00551e-087) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011100000 #b0011111010100011001001110001001011001111110001000010)))
(assert (= r (fp #b0 #b01011100000 #b0011111010100011001001110001001011001111110001000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

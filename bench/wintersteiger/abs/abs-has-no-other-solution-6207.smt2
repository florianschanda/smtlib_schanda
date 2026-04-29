(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.6121040827782298077153200210887007415294647216796875p-1022 {+ 2756671719111995 -1023 (1.36198e-308)}
; 0.6121040827782298077153200210887007415294647216796875p-1022 | == 0.6121040827782298077153200210887007415294647216796875p-1022
; [HW: 0.6121040827782298077153200210887007415294647216796875p-1022] 

; mpf : + 2756671719111995 -1023
; mpfd: + 2756671719111995 -1023 (1.36198e-308) class: Pos. denorm.
; hwf : + 2756671719111995 -1023 (1.36198e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1001110010110010110110100110100101000111110100111011)))
(assert (= r (fp #b0 #b00000000000 #b1001110010110010110110100110100101000111110100111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

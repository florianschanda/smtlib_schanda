(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3776184362802845750906044486328028142452239990234375 445 {+ 1700642248920119 445 (1.25163e+134)}
; 1.3776184362802845750906044486328028142452239990234375 445 I == 1.3776184362802845750906044486328028142452239990234375 445
; [HW: 1.3776184362802845750906044486328028142452239990234375 445] 

; mpf : + 1700642248920119 445
; mpfd: + 1700642248920119 445 (1.25163e+134) class: Pos. norm. non-zero
; hwf : + 1700642248920119 445 (1.25163e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111100 #b0110000010101011100110100001001000110000110000110111)))
(assert (= r (fp #b0 #b10110111100 #b0110000010101011100110100001001000110000110000110111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

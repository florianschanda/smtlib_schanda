(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2921487990918969490650169973378069698810577392578125p370 {- 1315721222727005 370 (-3.1075e+111)}
; -1.2921487990918969490650169973378069698810577392578125p370 | == 1.2921487990918969490650169973378069698810577392578125p370
; [HW: 1.2921487990918969490650169973378069698810577392578125p370] 

; mpf : + 1315721222727005 370
; mpfd: + 1315721222727005 370 (3.1075e+111) class: Pos. norm. non-zero
; hwf : + 1315721222727005 370 (3.1075e+111) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110001 #b0100101011001010010000111000000110101010010101011101)))
(assert (= r (fp #b0 #b10101110001 #b0100101011001010010000111000000110101010010101011101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

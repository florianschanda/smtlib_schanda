(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.819011134608793600619947028462775051593780517578125p656 {+ 3688498240636450 656 (5.43892e+197)}
; 1.819011134608793600619947028462775051593780517578125p656 | == 1.819011134608793600619947028462775051593780517578125p656
; [HW: 1.819011134608793600619947028462775051593780517578125p656] 

; mpf : + 3688498240636450 656
; mpfd: + 3688498240636450 656 (5.43892e+197) class: Pos. norm. non-zero
; hwf : + 3688498240636450 656 (5.43892e+197) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001111 #b1101000110101010101101101011011000110100011000100010)))
(assert (= r (fp #b0 #b11010001111 #b1101000110101010101101101011011000110100011000100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

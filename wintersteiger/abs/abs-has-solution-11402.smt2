(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.94555411326222493784143807715736329555511474609375p237 {- 4258397152146396 237 (-4.29687e+071)}
; -1.94555411326222493784143807715736329555511474609375p237 | == 1.94555411326222493784143807715736329555511474609375p237
; [HW: 1.94555411326222493784143807715736329555511474609375p237] 

; mpf : + 4258397152146396 237
; mpfd: + 4258397152146396 237 (4.29687e+071) class: Pos. norm. non-zero
; hwf : + 4258397152146396 237 (4.29687e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101100 #b1111001000001111110101011001100100001111001111011100)))
(assert (= r (fp #b0 #b10011101100 #b1111001000001111110101011001100100001111001111011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

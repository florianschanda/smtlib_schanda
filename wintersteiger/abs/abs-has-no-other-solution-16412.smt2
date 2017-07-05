(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7920118541658995869880754980840720236301422119140625p-81 {- 3566904291294561 -81 (-7.41159e-025)}
; -1.7920118541658995869880754980840720236301422119140625p-81 | == 1.7920118541658995869880754980840720236301422119140625p-81
; [HW: 1.7920118541658995869880754980840720236301422119140625p-81] 

; mpf : + 3566904291294561 -81
; mpfd: + 3566904291294561 -81 (7.41159e-025) class: Pos. norm. non-zero
; hwf : + 3566904291294561 -81 (7.41159e-025) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110101110 #b1100101011000001010010011111001110101111110101100001)))
(assert (= r (fp #b0 #b01110101110 #b1100101011000001010010011111001110101111110101100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

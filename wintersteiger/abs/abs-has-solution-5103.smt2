(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.408726384056647074061174862436018884181976318359375p-407 {+ 1840739990934006 -407 (4.26205e-123)}
; 1.408726384056647074061174862436018884181976318359375p-407 | == 1.408726384056647074061174862436018884181976318359375p-407
; [HW: 1.408726384056647074061174862436018884181976318359375p-407] 

; mpf : + 1840739990934006 -407
; mpfd: + 1840739990934006 -407 (4.26205e-123) class: Pos. norm. non-zero
; hwf : + 1840739990934006 -407 (4.26205e-123) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001101000 #b0110100010100010010010101101010010001001000111110110)))
(assert (= r (fp #b0 #b01001101000 #b0110100010100010010010101101010010001001000111110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

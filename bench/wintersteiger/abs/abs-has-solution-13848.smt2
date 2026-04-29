(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.51366275830152918757676161476410925388336181640625p-592 {- 2313331406880868 -592 (-9.33838e-179)}
; -1.51366275830152918757676161476410925388336181640625p-592 | == 1.51366275830152918757676161476410925388336181640625p-592
; [HW: 1.51366275830152918757676161476410925388336181640625p-592] 

; mpf : + 2313331406880868 -592
; mpfd: + 2313331406880868 -592 (9.33838e-179) class: Pos. norm. non-zero
; hwf : + 2313331406880868 -592 (9.33838e-179) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110101111 #b1000001101111111011001110000110000010100000001100100)))
(assert (= r (fp #b0 #b00110101111 #b1000001101111111011001110000110000010100000001100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

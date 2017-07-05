(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.77216455605685130336723887012340128421783447265625p-872 {+ 3477520006926340 -872 (5.62792e-263)}
; 1.77216455605685130336723887012340128421783447265625p-872 S == 1.3312267109913513696284326215391047298908233642578125p-436
; [HW: 1.3312267109913513696284326215391047298908233642578125p-436] 

; mpf : + 1491712492195805 -436
; mpfd: + 1491712492195805 -436 (7.50195e-132) class: Pos. norm. non-zero
; hwf : + 1491712492195805 -436 (7.50195e-132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010111 #b1100010110101100100100111000101101100101000000000100)))
(assert (= r (fp #b0 #b01001001011 #b0101010011001011010001100001001101000100111111011101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

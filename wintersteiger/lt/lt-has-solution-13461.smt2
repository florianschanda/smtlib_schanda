(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.06329033104179249136223006644286215305328369140625p-568 {+ 285034311295972 -568 (1.10056e-171)}
; Y = -1.595540462737063069909027035464532673358917236328125p-81 {- 2682075806066690 -81 (-6.599e-025)}
; 1.06329033104179249136223006644286215305328369140625p-568 < -1.595540462737063069909027035464532673358917236328125p-81 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000111 #b0001000000110011110010111000110111111010001111100100)))
(assert (= y (fp #b1 #b01110101110 #b1001100001110101010101101111101011100110100000000010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

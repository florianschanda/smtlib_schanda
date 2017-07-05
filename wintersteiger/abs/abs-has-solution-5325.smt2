(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.188447062074121873820331529714167118072509765625p-725 {- 848690118536080 -725 (-6.73338e-219)}
; -1.188447062074121873820331529714167118072509765625p-725 | == 1.188447062074121873820331529714167118072509765625p-725
; [HW: 1.188447062074121873820331529714167118072509765625p-725] 

; mpf : + 848690118536080 -725
; mpfd: + 848690118536080 -725 (6.73338e-219) class: Pos. norm. non-zero
; hwf : + 848690118536080 -725 (6.73338e-219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100101010 #b0011000000111110000100010001000010100010101110010000)))
(assert (= r (fp #b0 #b00100101010 #b0011000000111110000100010001000010100010101110010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

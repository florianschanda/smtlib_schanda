(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.72650513119563964181679693865589797496795654296875p-311 {+ 3271888238135436 -311 (4.13846e-094)}
; 1.72650513119563964181679693865589797496795654296875p-311 | == 1.72650513119563964181679693865589797496795654296875p-311
; [HW: 1.72650513119563964181679693865589797496795654296875p-311] 

; mpf : + 3271888238135436 -311
; mpfd: + 3271888238135436 -311 (4.13846e-094) class: Pos. norm. non-zero
; hwf : + 3271888238135436 -311 (4.13846e-094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001000 #b1011100111111100001111011000001011011100100010001100)))
(assert (= r (fp #b0 #b01011001000 #b1011100111111100001111011000001011011100100010001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3022810964880291439982329393387772142887115478515625p-217 {+ 1361353033504633 -217 (6.18295e-066)}
; 1.3022810964880291439982329393387772142887115478515625p-217 | == 1.3022810964880291439982329393387772142887115478515625p-217
; [HW: 1.3022810964880291439982329393387772142887115478515625p-217] 

; mpf : + 1361353033504633 -217
; mpfd: + 1361353033504633 -217 (6.18295e-066) class: Pos. norm. non-zero
; hwf : + 1361353033504633 -217 (6.18295e-066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100110 #b0100110101100010010010110011111110011101011101111001)))
(assert (= r (fp #b0 #b01100100110 #b0100110101100010010010110011111110011101011101111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

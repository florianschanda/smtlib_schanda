(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4216362612215942551330272181075997650623321533203125p490 {+ 1898880908923461 490 (4.5445e+147)}
; 1.4216362612215942551330272181075997650623321533203125p490 | == 1.4216362612215942551330272181075997650623321533203125p490
; [HW: 1.4216362612215942551330272181075997650623321533203125p490] 

; mpf : + 1898880908923461 490
; mpfd: + 1898880908923461 490 (4.5445e+147) class: Pos. norm. non-zero
; hwf : + 1898880908923461 490 (4.5445e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101001 #b0110101111110000010110101010000011000001001001000101)))
(assert (= r (fp #b0 #b10111101001 #b0110101111110000010110101010000011000001001001000101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

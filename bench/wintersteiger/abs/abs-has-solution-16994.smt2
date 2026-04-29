(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8854193002971328940731154943932779133319854736328125p515 {+ 3987574030884813 515 (2.02235e+155)}
; 1.8854193002971328940731154943932779133319854736328125p515 | == 1.8854193002971328940731154943932779133319854736328125p515
; [HW: 1.8854193002971328940731154943932779133319854736328125p515] 

; mpf : + 3987574030884813 515
; mpfd: + 3987574030884813 515 (2.02235e+155) class: Pos. norm. non-zero
; hwf : + 3987574030884813 515 (2.02235e+155) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000010 #b1110001010101010110101101101101000000101111111001101)))
(assert (= r (fp #b0 #b11000000010 #b1110001010101010110101101101101000000101111111001101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

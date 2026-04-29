(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.453143503313511164520832608104683458805084228515625p455 {- 2040776912668090 455 (-1.35194e+137)}
; -1.453143503313511164520832608104683458805084228515625p455 | == 1.453143503313511164520832608104683458805084228515625p455
; [HW: 1.453143503313511164520832608104683458805084228515625p455] 

; mpf : + 2040776912668090 455
; mpfd: + 2040776912668090 455 (1.35194e+137) class: Pos. norm. non-zero
; hwf : + 2040776912668090 455 (1.35194e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000110 #b0111010000000001001101100110111100100000010110111010)))
(assert (= r (fp #b0 #b10111000110 #b0111010000000001001101100110111100100000010110111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1205652519979398817895344109274446964263916015625 141 {+ 542977623971752 141 (3.12368e+042)}
; 1.1205652519979398817895344109274446964263916015625 141 I == 1.1205652519979398817895344109274446964263916015625 141
; [HW: 1.1205652519979398817895344109274446964263916015625 141] 

; mpf : + 542977623971752 141
; mpfd: + 542977623971752 141 (3.12368e+042) class: Pos. norm. non-zero
; hwf : + 542977623971752 141 (3.12368e+042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001100 #b0001111011011101010111010100011001011101011110101000)))
(assert (= r (fp #b0 #b10010001100 #b0001111011011101010111010100011001011101011110101000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

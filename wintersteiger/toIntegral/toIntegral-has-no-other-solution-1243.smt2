(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3118418729846761383583952920162118971347808837890625 780 {+ 1404410942972305 780 (8.34215e+234)}
; 1.3118418729846761383583952920162118971347808837890625 780 I == 1.3118418729846761383583952920162118971347808837890625 780
; [HW: 1.3118418729846761383583952920162118971347808837890625 780] 

; mpf : + 1404410942972305 780
; mpfd: + 1404410942972305 780 (8.34215e+234) class: Pos. norm. non-zero
; hwf : + 1404410942972305 780 (8.34215e+234) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100001011 #b0100111111010100110111100111010111111110000110010001)))
(assert (= r (fp #b0 #b11100001011 #b0100111111010100110111100111010111111110000110010001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

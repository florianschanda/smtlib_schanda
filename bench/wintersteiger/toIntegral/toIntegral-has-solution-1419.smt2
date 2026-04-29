(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4160060559901028742757489453651942312717437744140625 272 {- 1873524718740897 272 (-1.07454e+082)}
; -1.4160060559901028742757489453651942312717437744140625 272 I == -1.4160060559901028742757489453651942312717437744140625 272
; [HW: -1.4160060559901028742757489453651942312717437744140625 272] 

; mpf : - 1873524718740897 272
; mpfd: - 1873524718740897 272 (-1.07454e+082) class: Neg. norm. non-zero
; hwf : - 1873524718740897 272 (-1.07454e+082) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001111 #b0110101001111111010111110111010101101010010110100001)))
(assert (= r (fp #b1 #b10100001111 #b0110101001111111010111110111010101101010010110100001)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

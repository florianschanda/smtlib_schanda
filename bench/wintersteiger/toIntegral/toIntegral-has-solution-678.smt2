(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4692059155111893975487191710271872580051422119140625 774 {- 2113115586256225 774 (-1.45982e+233)}
; -1.4692059155111893975487191710271872580051422119140625 774 I == -1.4692059155111893975487191710271872580051422119140625 774
; [HW: -1.4692059155111893975487191710271872580051422119140625 774] 

; mpf : - 2113115586256225 774
; mpfd: - 2113115586256225 774 (-1.45982e+233) class: Neg. norm. non-zero
; hwf : - 2113115586256225 774 (-1.45982e+233) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000101 #b0111100000011101111000001111111000110101110101100001)))
(assert (= r (fp #b1 #b11100000101 #b0111100000011101111000001111111000110101110101100001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

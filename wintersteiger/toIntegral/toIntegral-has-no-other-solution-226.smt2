(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9416173958764793017195415814057923853397369384765625 639 {- 4240667753194889 639 (-4.42926e+192)}
; -1.9416173958764793017195415814057923853397369384765625 639 I == -1.9416173958764793017195415814057923853397369384765625 639
; [HW: -1.9416173958764793017195415814057923853397369384765625 639] 

; mpf : - 4240667753194889 639
; mpfd: - 4240667753194889 639 (-4.42926e+192) class: Neg. norm. non-zero
; hwf : - 4240667753194889 639 (-4.42926e+192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111110 #b1111000100001101110101100111000010100010010110001001)))
(assert (= r (fp #b1 #b11001111110 #b1111000100001101110101100111000010100010010110001001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

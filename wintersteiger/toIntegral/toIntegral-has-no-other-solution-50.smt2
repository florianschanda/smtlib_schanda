(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.647341349894015483101838981383480131626129150390625 455 {- 2915366262164202 455 (-1.53261e+137)}
; -1.647341349894015483101838981383480131626129150390625 455 I == -1.647341349894015483101838981383480131626129150390625 455
; [HW: -1.647341349894015483101838981383480131626129150390625 455] 

; mpf : - 2915366262164202 455
; mpfd: - 2915366262164202 455 (-1.53261e+137) class: Neg. norm. non-zero
; hwf : - 2915366262164202 455 (-1.53261e+137) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000110 #b1010010110111000001010011010011100100100101011101010)))
(assert (= r (fp #b1 #b10111000110 #b1010010110111000001010011010011100100100101011101010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1302782174704251172414615211891941726207733154296875 339 {- 586720931654299 339 (-1.26577e+102)}
; -1.1302782174704251172414615211891941726207733154296875 339 I == -1.1302782174704251172414615211891941726207733154296875 339
; [HW: -1.1302782174704251172414615211891941726207733154296875 339] 

; mpf : - 586720931654299 339
; mpfd: - 586720931654299 339 (-1.26577e+102) class: Neg. norm. non-zero
; hwf : - 586720931654299 339 (-1.26577e+102) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101010010 #b0010000101011001111010011100101101101010101010011011)))
(assert (= r (fp #b1 #b10101010010 #b0010000101011001111010011100101101101010101010011011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.727798782764296436909035037388093769550323486328125 198 {- 3277714326857986 198 (-6.94116e+059)}
; -1.727798782764296436909035037388093769550323486328125 198 I == -1.727798782764296436909035037388093769550323486328125 198
; [HW: -1.727798782764296436909035037388093769550323486328125 198] 

; mpf : - 3277714326857986 198
; mpfd: - 3277714326857986 198 (-6.94116e+059) class: Neg. norm. non-zero
; hwf : - 3277714326857986 198 (-6.94116e+059) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011000101 #b1011101001010001000001010110001000001010100100000010)))
(assert (= r (fp #b1 #b10011000101 #b1011101001010001000001010110001000001010100100000010)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

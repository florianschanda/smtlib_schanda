(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1364356749908981480956526866066269576549530029296875 818 {- 614451655049051 818 (-1.98647e+246)}
; -1.1364356749908981480956526866066269576549530029296875 818 I == -1.1364356749908981480956526866066269576549530029296875 818
; [HW: -1.1364356749908981480956526866066269576549530029296875 818] 

; mpf : - 614451655049051 818
; mpfd: - 614451655049051 818 (-1.98647e+246) class: Neg. norm. non-zero
; hwf : - 614451655049051 818 (-1.98647e+246) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110001 #b0010001011101101011100101100101000010111111101011011)))
(assert (= r (fp #b1 #b11100110001 #b0010001011101101011100101100101000010111111101011011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

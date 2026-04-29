(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8953141038787328920278696386958472430706024169921875 621 {- 4032136264607811 621 (-1.64933e+187)}
; -1.8953141038787328920278696386958472430706024169921875 621 I == -1.8953141038787328920278696386958472430706024169921875 621
; [HW: -1.8953141038787328920278696386958472430706024169921875 621] 

; mpf : - 4032136264607811 621
; mpfd: - 4032136264607811 621 (-1.64933e+187) class: Neg. norm. non-zero
; hwf : - 4032136264607811 621 (-1.64933e+187) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001101100 #b1110010100110011010011100001101111001110100001000011)))
(assert (= r (fp #b1 #b11001101100 #b1110010100110011010011100001101111001110100001000011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

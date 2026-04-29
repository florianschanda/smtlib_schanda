(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9642227947942554333593534465762786567211151123046875 958 {- 4342473419337547 958 (-4.78549e+288)}
; -1.9642227947942554333593534465762786567211151123046875 958 I == -1.9642227947942554333593534465762786567211151123046875 958
; [HW: -1.9642227947942554333593534465762786567211151123046875 958] 

; mpf : - 4342473419337547 958
; mpfd: - 4342473419337547 958 (-4.78549e+288) class: Neg. norm. non-zero
; hwf : - 4342473419337547 958 (-4.78549e+288) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111101 #b1111011011010111010011100001100110110010111101001011)))
(assert (= r (fp #b1 #b11110111101 #b1111011011010111010011100001100110110010111101001011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

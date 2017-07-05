(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.861461001637081835724529810249805450439453125p-438 {- 3879675445966976 -438 (-2.6225e-132)}
; Y = -1.8274844923536843754874325895798392593860626220703125p234 {- 3726658851418917 234 (-5.04513e+070)}
; -1.861461001637081835724529810249805450439453125p-438 + -1.8274844923536843754874325895798392593860626220703125p234 == -1.8274844923536843754874325895798392593860626220703125p234
; [HW: -1.8274844923536843754874325895798392593860626220703125p234] 

; mpf : - 3726658851418917 234
; mpfd: - 3726658851418917 234 (-5.04513e+070) class: Neg. norm. non-zero
; hwf : - 3726658851418917 234 (-5.04513e+070) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001001001 #b1101110010001000101101010100110011001111100010000000)))
(assert (= y (fp #b1 #b10011101001 #b1101001111010110000001100001000010011011001100100101)))
(assert (= r (fp #b1 #b10011101001 #b1101001111010110000001100001000010011011001100100101)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)

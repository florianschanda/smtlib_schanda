(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.912658116633040084053618556936271488666534423828125p-106 {+ 4110246753985218 -106 (2.35753e-032)}
; Y = -1.9510308063203101180960175042855553328990936279296875p-161 {- 4283061984962011 -161 (-6.67475e-049)}
; 1.912658116633040084053618556936271488666534423828125p-106 / -1.9510308063203101180960175042855553328990936279296875p-161 == -1.960664188834986276788185932673513889312744140625p54
; [HW: -1.960664188834986276788185932673513889312744140625p54] 

; mpf : - 4326446882865424 54
; mpfd: - 4326446882865424 54 (-3.53202e+016) class: Neg. norm. non-zero
; hwf : - 4326446882865424 54 (-3.53202e+016) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010101 #b1110100110100011111101100101101101011110001011000010)))
(assert (= y (fp #b1 #b01101011110 #b1111001101110110110000010100001010100010010111011011)))
(assert (= r (fp #b1 #b10000110101 #b1111010111101110000101101001100101111100000100010000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

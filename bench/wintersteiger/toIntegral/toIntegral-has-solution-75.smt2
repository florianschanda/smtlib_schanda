(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4794491963132780920631148546817712485790252685546875 109 {- 2159247221859563 109 (-9.60217e+032)}
; -1.4794491963132780920631148546817712485790252685546875 109 I == -1.4794491963132780920631148546817712485790252685546875 109
; [HW: -1.4794491963132780920631148546817712485790252685546875 109] 

; mpf : - 2159247221859563 109
; mpfd: - 2159247221859563 109 (-9.60217e+032) class: Neg. norm. non-zero
; hwf : - 2159247221859563 109 (-9.60217e+032) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001101100 #b0111101010111101001011101011101001000010010011101011)))
(assert (= r (fp #b1 #b10001101100 #b0111101010111101001011101011101001000010010011101011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

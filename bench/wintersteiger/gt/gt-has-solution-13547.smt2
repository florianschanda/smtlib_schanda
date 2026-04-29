(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2280227068036195792188891573459841310977935791015625p351 {- 1026922977392793 351 (-5.63294e+105)}
; Y = 1.9106398908225237232016979760373942553997039794921875p-137 {+ 4101157472977027 -137 (1.09665e-041)}
; -1.2280227068036195792188891573459841310977935791015625p351 > 1.9106398908225237232016979760373942553997039794921875p-137 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101011110 #b0011101001011111101100100011010001110111100010011001)))
(assert (= y (fp #b0 #b01101110110 #b1110100100011111101100100010010110000100000010000011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

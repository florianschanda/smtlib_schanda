(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.63173747983200456701524672098457813262939453125p848 {- 2845092678767392 848 (-3.06257e+255)}
; Y = -1.49780016320064390811239718459546566009521484375p-349 {- 2241892629495392 -349 (-1.30613e-105)}
; -1.63173747983200456701524672098457813262939453125p848 - -1.49780016320064390811239718459546566009521484375p-349 == -1.63173747983200456701524672098457813262939453125p848
; [HW: -1.63173747983200456701524672098457813262939453125p848] 

; mpf : - 2845092678767392 848
; mpfd: - 2845092678767392 848 (-3.06257e+255) class: Neg. norm. non-zero
; hwf : - 2845092678767392 848 (-3.06257e+255) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001111 #b1010000110111001100011000010011110001001001100100000)))
(assert (= y (fp #b1 #b01010100010 #b0111111101101111110101001101110011100011111001100000)))
(assert (= r (fp #b1 #b11101001111 #b1010000110111001100011000010011110001001001100100000)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)

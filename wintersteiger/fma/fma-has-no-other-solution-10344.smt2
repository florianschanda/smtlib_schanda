(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3275957933859745541127495016553439199924468994140625p606 {+ 1475360293021217 606 (3.52568e+182)}
; Y = -1.015796978254928983886884452658705413341522216796875p-249 {- 71143265382478 -249 (-1.12289e-075)}
; Z = -1.090824650876672574639769663917832076549530029296875p-224 {- 409037863844238 -224 (-4.04609e-068)}
; 1.3275957933859745541127495016553439199924468994140625p606 x -1.015796978254928983886884452658705413341522216796875p-249 -1.090824650876672574639769663917832076549530029296875p-224 == -1.348567795265427804451974225230515003204345703125p357
; [HW: -1.348567795265427804451974225230515003204345703125p357] 

; mpf : - 1569809792870736 357
; mpfd: - 1569809792870736 357 (-3.95896e+107) class: Neg. norm. non-zero
; hwf : - 1569809792870736 357 (-3.95896e+107) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011101 #b0101001111011101010100010110001011100110011000100001)))
(assert (= y (fp #b1 #b01100000110 #b0000010000001011010001010101000011111011000001001110)))
(assert (= z (fp #b1 #b01100011111 #b0001011101000000010010001100100100101111100110001110)))
(assert (= r (fp #b1 #b10101100100 #b0101100100111011101111010011000100011010100101010000)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)

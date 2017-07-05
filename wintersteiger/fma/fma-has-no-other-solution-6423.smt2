(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.323440249429847614948130285483784973621368408203125p-770 {+ 1456645386808882 -770 (2.13112e-232)}
; Y = 1.997781607462302044808666323660872876644134521484375p395 {+ 4493608875564358 395 (1.61212e+119)}
; Z = -1.020082028513402239155993811436928808689117431640625p326 {- 90441416129802 326 (-1.39448e+098)}
; 1.323440249429847614948130285483784973621368408203125p-770 x 1.997781607462302044808666323660872876644134521484375p395 -1.020082028513402239155993811436928808689117431640625p326 == -1.020082028513402239155993811436928808689117431640625p326
; [HW: -1.020082028513402239155993811436928808689117431640625p326] 

; mpf : - 90441416129802 326
; mpfd: - 90441416129802 326 (-1.39448e+098) class: Neg. norm. non-zero
; hwf : - 90441416129802 326 (-1.39448e+098) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011111101 #b0101001011001100111110101110110110000010111000110010)))
(assert (= y (fp #b0 #b10110001010 #b1111111101101110100111011000110010011001110101000110)))
(assert (= z (fp #b1 #b10101000101 #b0000010100100100000110001000011110110011110100001010)))
(assert (= r (fp #b1 #b10101000101 #b0000010100100100000110001000011110110011110100001010)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)

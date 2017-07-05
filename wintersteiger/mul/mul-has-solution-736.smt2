(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.137768437925556153089701183489523828029632568359375p313 {+ 620453885704950 313 (1.89864e+094)}
; Y = -1.41720471624397159615682539879344403743743896484375p-673 {- 1878923004613564 -673 (-3.61614e-203)}
; 1.137768437925556153089701183489523828029632568359375p313 * -1.41720471624397159615682539879344403743743896484375p-673 == -1.6124507962216345635653169665602035820484161376953125p-360
; [HW: -1.6124507962216345635653169665602035820484161376953125p-360] 

; mpf : - 2758233177646517 -360
; mpfd: - 2758233177646517 -360 (-6.86575e-109) class: Neg. norm. non-zero
; hwf : - 2758233177646517 -360 (-6.86575e-109) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111000 #b0010001101000100110010101101011101001111101011110110)))
(assert (= y (fp #b1 #b00101011110 #b0110101011001101111011011010010000000001001110111100)))
(assert (= r (fp #b1 #b01010010111 #b1001110011001001100100110100110000101110010110110101)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)

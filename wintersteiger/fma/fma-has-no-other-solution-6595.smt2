(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 0.6394179382065932060186241869814693927764892578125p-1022 {+ 2879682388241224 -1023 (1.42275e-308)}
; Z = -1.0725540386585203922464870629482902586460113525390625p-975 {- 326754341466737 -975 (-3.35872e-294)}
; +zero x 0.6394179382065932060186241869814693927764892578125p-1022 -1.0725540386585203922464870629482902586460113525390625p-975 == -1.0725540386585203922464870629482902586460113525390625p-975
; [HW: -1.0725540386585203922464870629482902586460113525390625p-975] 

; mpf : - 326754341466737 -975
; mpfd: - 326754341466737 -975 (-3.35872e-294) class: Neg. norm. non-zero
; hwf : - 326754341466737 -975 (-3.35872e-294) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b00000000000 #b1010001110110000111001001101110100010010101101001000)))
(assert (= z (fp #b1 #b00000110000 #b0001001010010010111001101100011100111011001001110001)))
(assert (= r (fp #b1 #b00000110000 #b0001001010010010111001101100011100111011001001110001)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)

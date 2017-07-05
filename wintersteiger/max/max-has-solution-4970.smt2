(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.095815458427126021234698782791383564472198486328125p328 {- 431514462868738 328 (-5.99206e+098)}
; Y = -1.6528190668205933189227607726934365928173065185546875p-357 {- 2940035706073579 -357 (-5.63011e-108)}
; -1.095815458427126021234698782791383564472198486328125p328 M -1.6528190668205933189227607726934365928173065185546875p-357 == -1.6528190668205933189227607726934365928173065185546875p-357
; [HW: -1.6528190668205933189227607726934365928173065185546875p-357] 

; mpf : - 2940035706073579 -357
; mpfd: - 2940035706073579 -357 (-5.63011e-108) class: Neg. norm. non-zero
; hwf : - 2940035706073579 -357 (-5.63011e-108) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101000111 #b0001100010000111010111001010010001100101010100000010)))
(assert (= y (fp #b1 #b01010011010 #b1010011100011111001001100111111000110011000111101011)))
(assert (= r (fp #b1 #b01010011010 #b1010011100011111001001100111111000110011000111101011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

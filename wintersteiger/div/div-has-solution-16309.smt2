(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7740933759340584696673204234684817492961883544921875p-254 {- 3486206639406595 -254 (-6.12855e-077)}
; Y = 0.40309294709201726192304704454727470874786376953125p-1022 {+ 1815369246319284 -1023 (8.96912e-309)}
; -1.7740933759340584696673204234684817492961883544921875p-254 / 0.40309294709201726192304704454727470874786376953125p-1022 == -1.10030043240192920706022050580941140651702880859375p770
; [HW: -1.10030043240192920706022050580941140651702880859375p770] 

; mpf : - 451712989990428 770
; mpfd: - 451712989990428 770 (-6.83295e+231) class: Neg. norm. non-zero
; hwf : - 451712989990428 770 (-6.83295e+231) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100000001 #b1100011000101010111110111100010110101111111000000011)))
(assert (= y (fp #b0 #b00000000000 #b0110011100110001000110010111000100000010001010110100)))
(assert (= r (fp #b1 #b11100000001 #b0001100110101101010010100000010011110000111000011100)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)

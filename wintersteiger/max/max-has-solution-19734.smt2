(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0591173907317867897148744305013678967952728271484375p-118 {- 266241058870791 -118 (-3.18717e-036)}
; Y = -1.66168155151932506186085447552613914012908935546875p490 {- 2979948788860364 490 (-5.31185e+147)}
; -1.0591173907317867897148744305013678967952728271484375p-118 M -1.66168155151932506186085447552613914012908935546875p490 == -1.0591173907317867897148744305013678967952728271484375p-118
; [HW: -1.0591173907317867897148744305013678967952728271484375p-118] 

; mpf : - 266241058870791 -118
; mpfd: - 266241058870791 -118 (-3.18717e-036) class: Neg. norm. non-zero
; hwf : - 266241058870791 -118 (-3.18717e-036) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001001 #b0000111100100010010100010011101111010001011000000111)))
(assert (= y (fp #b1 #b10111101001 #b1010100101100011111101100101000000100100010111001100)))
(assert (= r (fp #b1 #b01110001001 #b0000111100100010010100010011101111010001011000000111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

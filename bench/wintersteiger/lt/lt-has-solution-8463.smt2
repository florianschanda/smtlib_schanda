(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.384372524935830295333971662330441176891326904296875p-27 {+ 1731059960072462 -27 (1.03144e-008)}
; Y = -1.048868182714956187595589653938077390193939208984375p348 {- 220082729465350 348 (-6.01394e+104)}
; 1.384372524935830295333971662330441176891326904296875p-27 < -1.048868182714956187595589653938077390193939208984375p348 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111100100 #b0110001001100110001111001110000000010100100100001110)))
(assert (= y (fp #b1 #b10101011011 #b0000110010000010101000000000111010010011011000000110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

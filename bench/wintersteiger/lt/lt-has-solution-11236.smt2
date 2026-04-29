(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.135817220265639360121667778003029525279998779296875p-1022 {+ 611666382578830 -1023 (3.02203e-309)}
; Y = 1.6058960675084776870136238358099944889545440673828125p75 {+ 2728713303856429 75 (6.0669e+022)}
; 0.135817220265639360121667778003029525279998779296875p-1022 < 1.6058960675084776870136238358099944889545440673828125p75 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0010001011000100111010101101011101000110010010001110)))
(assert (= y (fp #b0 #b10001001010 #b1001101100011100000000010011001010111001010100101101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

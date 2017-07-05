(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.64549504029401649773944882326759397983551025390625p-322 {+ 2907051222937636 -322 (1.92592e-097)}
; Y = 1.624572280297697179918259280384518206119537353515625p530 {+ 2812823488814650 530 (5.71001e+159)}
; 1.64549504029401649773944882326759397983551025390625p-322 = 1.624572280297697179918259280384518206119537353515625p530 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010111101 #b1010010100111111001010011011011111001011000000100100)))
(assert (= y (fp #b0 #b11000010001 #b1001111111100011111110000000110111011101111000111010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

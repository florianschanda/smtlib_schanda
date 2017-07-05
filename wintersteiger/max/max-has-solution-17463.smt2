(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.00414833700995576037939827074296772480010986328125p-978 {+ 18682449012244 -978 (3.93063e-295)}
; Y = -1.9921814932614856363812805284396745264530181884765625p-389 {- 4468388203336329 -389 (-1.58001e-117)}
; 1.00414833700995576037939827074296772480010986328125p-978 M -1.9921814932614856363812805284396745264530181884765625p-389 == 1.00414833700995576037939827074296772480010986328125p-978
; [HW: 1.00414833700995576037939827074296772480010986328125p-978] 

; mpf : + 18682449012244 -978
; mpfd: + 18682449012244 -978 (3.93063e-295) class: Pos. norm. non-zero
; hwf : + 18682449012244 -978 (3.93063e-295) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101101 #b0000000100001111110111011000101111001010011000010100)))
(assert (= y (fp #b1 #b01001111010 #b1111110111111111100110110011100101000001001010001001)))
(assert (= r (fp #b0 #b00000101101 #b0000000100001111110111011000101111001010011000010100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

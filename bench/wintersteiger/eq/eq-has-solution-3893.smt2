(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7890907649537568513409269144176505506038665771484375p-982 {+ 3553748875007239 -982 (4.377e-296)}
; Y = -1.975271410708597574767964033526368439197540283203125p638 {- 4392231961852338 638 (-2.25301e+192)}
; 1.7890907649537568513409269144176505506038665771484375p-982 = -1.975271410708597574767964033526368439197540283203125p638 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000101001 #b1100101000000001110110100011010100001101010100000111)))
(assert (= y (fp #b1 #b11001111101 #b1111100110101011011000110001110110110111100110110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

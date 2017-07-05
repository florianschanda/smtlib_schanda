(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.472060027735192289100041307392530143260955810546875p709 {- 2125969365004718 709 (-3.96454e+213)}
; +zero + -1.472060027735192289100041307392530143260955810546875p709 == -1.472060027735192289100041307392530143260955810546875p709
; [HW: -1.472060027735192289100041307392530143260955810546875p709] 

; mpf : - 2125969365004718 709
; mpfd: - 2125969365004718 709 (-3.96454e+213) class: Neg. norm. non-zero
; hwf : - 2125969365004718 709 (-3.96454e+213) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11011000100 #b0111100011011000111011010000110011011111000110101110)))
(assert (= r (fp #b1 #b11011000100 #b0111100011011000111011010000110011011111000110101110)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)

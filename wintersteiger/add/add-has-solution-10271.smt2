(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.713874695071887277464384169434197247028350830078125p795 {+ 3215005810714978 795 (3.57129e+239)}
; Y = 1.797923966768408821081948190112598240375518798828125p-107 {+ 3593530079408194 -107 (1.10806e-032)}
; 1.713874695071887277464384169434197247028350830078125p795 + 1.797923966768408821081948190112598240375518798828125p-107 == 1.713874695071887277464384169434197247028350830078125p795
; [HW: 1.713874695071887277464384169434197247028350830078125p795] 

; mpf : + 3215005810714978 795
; mpfd: + 3215005810714978 795 (3.57129e+239) class: Pos. norm. non-zero
; hwf : + 3215005810714978 795 (3.57129e+239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100011010 #b1011011011000000011111011111010011000110100101100010)))
(assert (= y (fp #b0 #b01110010100 #b1100110001000100101111101011110111110111000001000010)))
(assert (= r (fp #b0 #b11100011010 #b1011011011000000011111011111010011000110100101100010)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)

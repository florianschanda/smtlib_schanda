(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.968769345245756863249653179082088172435760498046875p826 {- 4362949262256750 826 (-8.80991e+248)}
; Y = -zero {- 0 -1023 (-0)}
; -1.968769345245756863249653179082088172435760498046875p826 + -zero == -1.968769345245756863249653179082088172435760498046875p826
; [HW: -1.968769345245756863249653179082088172435760498046875p826] 

; mpf : - 4362949262256750 826
; mpfd: - 4362949262256750 826 (-8.80991e+248) class: Neg. norm. non-zero
; hwf : - 4362949262256750 826 (-8.80991e+248) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100111001 #b1111100000000001010001001000111100110010101001101110)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b11100111001 #b1111100000000001010001001000111100110010101001101110)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)

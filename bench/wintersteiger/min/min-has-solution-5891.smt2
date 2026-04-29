(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.833898570425436247433026437647640705108642578125p-429 {- 3755545291032784 -429 (-1.32284e-129)}
; -zero m -1.833898570425436247433026437647640705108642578125p-429 == -1.833898570425436247433026437647640705108642578125p-429
; [HW: -1.833898570425436247433026437647640705108642578125p-429] 

; mpf : - 3755545291032784 -429
; mpfd: - 3755545291032784 -429 (-1.32284e-129) class: Neg. norm. non-zero
; hwf : - 3755545291032784 -429 (-1.32284e-129) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b01001010010 #b1101010101111010011000000111000000101000100011010000)))
(assert (= r (fp #b1 #b01001010010 #b1101010101111010011000000111000000101000100011010000)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1207189034172049257875869443523697555065155029296875p-119 {- 543669608446299 -119 (-1.68627e-036)}
; Y = +zero {+ 0 -1023 (0)}
; -1.1207189034172049257875869443523697555065155029296875p-119 - +zero == -1.1207189034172049257875869443523697555065155029296875p-119
; [HW: -1.1207189034172049257875869443523697555065155029296875p-119] 

; mpf : - 543669608446299 -119
; mpfd: - 543669608446299 -119 (-1.68627e-036) class: Neg. norm. non-zero
; hwf : - 543669608446299 -119 (-1.68627e-036) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001000 #b0001111011100111011011110001111000101111100101011011)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b01110001000 #b0001111011100111011011110001111000101111100101011011)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.071499625765713670233481025206856429576873779296875p-498 {- 322005687955598 -498 (-1.30935e-150)}
; Y = -1.66426189856203432526626784238032996654510498046875p-299 {- 2991569638840396 -299 (-1.634e-090)}
; -1.071499625765713670233481025206856429576873779296875p-498 - -1.66426189856203432526626784238032996654510498046875p-299 == 1.6642618985620341032216629173490218818187713623046875p-299
; [HW: 1.6642618985620341032216629173490218818187713623046875p-299] 

; mpf : + 2991569638840395 -299
; mpfd: + 2991569638840395 -299 (1.634e-090) class: Pos. norm. non-zero
; hwf : + 2991569638840395 -299 (1.634e-090) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000001101 #b0001001001001101110011001010101001010111000010001110)))
(assert (= y (fp #b1 #b01011010100 #b1010101000001101000100010101101001001101100001001100)))
(assert (= r (fp #b0 #b01011010100 #b1010101000001101000100010101101001001101100001001011)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)

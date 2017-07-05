(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3018889380496163621359073658823035657405853271484375p-290 {+ 1359586908907527 -290 (6.54448e-088)}
; Y = -1.874055980264078158370466553606092929840087890625p951 {- 3936398187018256 951 (-3.56704e+286)}
; 1.3018889380496163621359073658823035657405853271484375p-290 / -1.874055980264078158370466553606092929840087890625p951 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011101 #b0100110101001000100101111110101111110010100000000111)))
(assert (= y (fp #b1 #b11110110110 #b1101111111000010001000011111101000011011100000010000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)

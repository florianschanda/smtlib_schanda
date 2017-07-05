(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.320274944966779440136406265082769095897674560546875p-871 {- 1442390122808494 -871 (-8.38568e-263)}
; Y = -1.1709664022186736520581007425789721310138702392578125p-732 {- 769964225324893 -732 (-5.18308e-221)}
; -1.320274944966779440136406265082769095897674560546875p-871 % -1.1709664022186736520581007425789721310138702392578125p-732 == -1.320274944966779440136406265082769095897674560546875p-871
; [HW: -1.320274944966779440136406265082769095897674560546875p-871] 

; mpf : - 1442390122808494 -871
; mpfd: - 1442390122808494 -871 (-8.38568e-263) class: Neg. norm. non-zero
; hwf : - 1442390122808494 -871 (-8.38568e-263) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011000 #b0101000111111101100010011110111001011100010010101110)))
(assert (= y (fp #b1 #b00100100011 #b0010101111000100011101000100001000111110011101011101)))
(assert (= r (fp #b1 #b00010011000 #x51fd89ee5c4ae)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)

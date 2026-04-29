(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.74595676361773666229737500543706119060516357421875p658 {- 3359490602663340 658 (-2.08819e+198)}
; -1.74595676361773666229737500543706119060516357421875p658 | == 1.74595676361773666229737500543706119060516357421875p658
; [HW: 1.74595676361773666229737500543706119060516357421875p658] 

; mpf : + 3359490602663340 658
; mpfd: + 3359490602663340 658 (2.08819e+198) class: Pos. norm. non-zero
; hwf : + 3359490602663340 658 (2.08819e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010001 #b1011111011110111000001011011111111110111110110101100)))
(assert (= r (fp #b0 #b11010010001 #b1011111011110111000001011011111111110111110110101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

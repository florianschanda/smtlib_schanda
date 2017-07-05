(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.38747929410960590956847227062098681926727294921875p530 {- 1745051604565804 530 (-4.87668e+159)}
; -1.38747929410960590956847227062098681926727294921875p530 | == 1.38747929410960590956847227062098681926727294921875p530
; [HW: 1.38747929410960590956847227062098681926727294921875p530] 

; mpf : + 1745051604565804 530
; mpfd: + 1745051604565804 530 (4.87668e+159) class: Pos. norm. non-zero
; hwf : + 1745051604565804 530 (4.87668e+159) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010001 #b0110001100110001110101111101000000010011111100101100)))
(assert (= r (fp #b0 #b11000010001 #b0110001100110001110101111101000000010011111100101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

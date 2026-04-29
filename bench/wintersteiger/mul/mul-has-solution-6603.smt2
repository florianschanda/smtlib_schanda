(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9308683150450456356139739000354893505573272705078125p-495 {- 4192258196767869 -495 (-1.88758e-149)}
; Y = -1.094259055377527989350028292392380535602569580078125p-704 {- 424505046674530 -704 (-1.30018e-212)}
; -1.9308683150450456356139739000354893505573272705078125p-495 * -1.094259055377527989350028292392380535602569580078125p-704 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000010000 #b1110111001001101011000101100101000000000010001111101)))
(assert (= y (fp #b1 #b00100111111 #b0001100000100001010111001000100000110010110001100010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

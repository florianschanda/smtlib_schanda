(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.541221121306823871321967089897952973842620849609375p-990 {+ 2437443240242454 -990 (1.47289e-298)}
; 1.541221121306823871321967089897952973842620849609375p-990 S == 1.2414592709013148041918839226127602159976959228515625p-495
; [HW: 1.2414592709013148041918839226127602159976959228515625p-495] 

; mpf : + 1087435882456313 -495
; mpfd: + 1087435882456313 -495 (1.21363e-149) class: Pos. norm. non-zero
; hwf : + 1087435882456313 -495 (1.21363e-149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000100001 #b1000101010001101011101111010011111101010110100010110)))
(assert (= r (fp #b0 #b01000010000 #b0011110111010000010001100101011111010110010011111001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

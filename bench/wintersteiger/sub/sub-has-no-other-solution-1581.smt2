(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.575213638768417023783285912941209971904754638671875p156 {+ 2590531929215870 156 (1.43886e+047)}
; -zero - 1.575213638768417023783285912941209971904754638671875p156 == -1.575213638768417023783285912941209971904754638671875p156
; [HW: -1.575213638768417023783285912941209971904754638671875p156] 

; mpf : - 2590531929215870 156
; mpfd: - 2590531929215870 156 (-1.43886e+047) class: Neg. norm. non-zero
; hwf : - 2590531929215870 156 (-1.43886e+047) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10010011011 #b1001001101000001001100110111011010111001001101111110)))
(assert (= r (fp #b1 #b10010011011 #b1001001101000001001100110111011010111001001101111110)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)

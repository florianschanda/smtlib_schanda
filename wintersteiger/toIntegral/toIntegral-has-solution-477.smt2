(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.20575847974039707111160169006325304508209228515625 -499 {- 926653812687172 -499 (-7.36703e-151)}
; -1.20575847974039707111160169006325304508209228515625 -499 I == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000001100 #b0011010010101100100101100111010101011100000101000100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.92155743113072485783732190611772239208221435546875 317 {- 4150325703440844 317 (-5.13053e+095)}
; -1.92155743113072485783732190611772239208221435546875 317 I == -1.92155743113072485783732190611772239208221435546875 317
; [HW: -1.92155743113072485783732190611772239208221435546875 317] 

; mpf : - 4150325703440844 317
; mpfd: - 4150325703440844 317 (-5.13053e+095) class: Neg. norm. non-zero
; hwf : - 4150325703440844 317 (-5.13053e+095) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100111100 #b1110101111101011001100000001010000010111100111001100)))
(assert (= r (fp #b1 #b10100111100 #b1110101111101011001100000001010000010111100111001100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

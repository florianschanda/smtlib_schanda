(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.243084122844347660929997800849378108978271484375 -766 {- 1094753565061488 -766 (-3.20276e-231)}
; -1.243084122844347660929997800849378108978271484375 -766 I == -1.0 0
; [HW: -1.0 0] 

; mpf : - 0 0
; mpfd: - 0 0 (-1) class: Neg. norm. non-zero
; hwf : - 0 0 (-1) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100000001 #b0011111000111010110000101101010111001011000101110000)))
(assert (= r (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0062865958310920344587202635011635720729827880859375p695 {+ 28312310642335 695 (1.65413e+209)}
; Y = -zero {- 0 -1023 (-0)}
; 1.0062865958310920344587202635011635720729827880859375p695 - -zero == 1.0062865958310920344587202635011635720729827880859375p695
; [HW: 1.0062865958310920344587202635011635720729827880859375p695] 

; mpf : + 28312310642335 695
; mpfd: + 28312310642335 695 (1.65413e+209) class: Pos. norm. non-zero
; hwf : + 28312310642335 695 (1.65413e+209) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110110 #b0000000110011011111111111001001101111111011010011111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b11010110110 #b0000000110011011111111111001001101111111011010011111)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)

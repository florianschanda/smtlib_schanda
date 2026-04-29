(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2353719940397251964014913028222508728504180908203125p-978 {+ 1060021224650757 -978 (4.83573e-295)}
; Y = 1.449804869146571917326582479290664196014404296875p833 {+ 2025741041077936 833 (8.30416e+250)}
; 1.2353719940397251964014913028222508728504180908203125p-978 / 1.449804869146571917326582479290664196014404296875p833 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101101 #b0011110001000001010101101100100011001011100000000101)))
(assert (= y (fp #b0 #b11101000000 #b0111001100100110011010010111001010010000111010110000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)

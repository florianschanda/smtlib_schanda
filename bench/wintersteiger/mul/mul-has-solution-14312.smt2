(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.808500597587999525472923778579570353031158447265625p-872 {- 3641162990026138 -872 (-5.74331e-263)}
; Y = 1.5997739652023155176863156157196499407291412353515625p-317 {+ 2701141806191673 -317 (5.9917e-096)}
; -1.808500597587999525472923778579570353031158447265625p-872 * 1.5997739652023155176863156157196499407291412353515625p-317 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010010111 #b1100111011111001111001010010100101101111110110011010)))
(assert (= y (fp #b0 #b01011000010 #b1001100110001010110010010101110110001001010000111001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

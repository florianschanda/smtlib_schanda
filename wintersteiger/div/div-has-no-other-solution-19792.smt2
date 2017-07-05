(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.32612908852582478402837296016514301300048828125p-258 {- 1468754841559584 -258 (-2.86317e-078)}
; Y = 1.1860177834393772489107732326374389231204986572265625p899 {+ 837749620181865 899 (5.01253e+270)}
; -1.32612908852582478402837296016514301300048828125p-258 / 1.1860177834393772489107732326374389231204986572265625p899 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011111101 #b0101001101111101001100100010100101111110001000100000)))
(assert (= y (fp #b0 #b11110000010 #b0010111110011110110111001000100001011000101101101001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)

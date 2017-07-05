(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1772120482393741980331469676457345485687255859375p-565 {+ 798092114416408 -565 (9.74781e-171)}
; 1.1772120482393741980331469676457345485687255859375p-565 | == 1.1772120482393741980331469676457345485687255859375p-565
; [HW: 1.1772120482393741980331469676457345485687255859375p-565] 

; mpf : + 798092114416408 -565
; mpfd: + 798092114416408 -565 (9.74781e-171) class: Pos. norm. non-zero
; hwf : + 798092114416408 -565 (9.74781e-171) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111001010 #b0010110101011101110001001100111110100101001100011000)))
(assert (= r (fp #b0 #b00111001010 #b0010110101011101110001001100111110100101001100011000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

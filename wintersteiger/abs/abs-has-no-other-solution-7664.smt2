(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.907120520469737900981499478803016245365142822265625p492 {+ 4085307637967642 492 (2.43857e+148)}
; 1.907120520469737900981499478803016245365142822265625p492 | == 1.907120520469737900981499478803016245365142822265625p492
; [HW: 1.907120520469737900981499478803016245365142822265625p492] 

; mpf : + 4085307637967642 492
; mpfd: + 4085307637967642 492 (2.43857e+148) class: Pos. norm. non-zero
; hwf : + 4085307637967642 492 (2.43857e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101011 #b1110100000111001000011001110100011110010101100011010)))
(assert (= r (fp #b0 #b10111101011 #b1110100000111001000011001110100011110010101100011010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4290633901323539500793913248344324529170989990234375p822 {- 1932329723918391 822 (-3.99676e+247)}
; -1.4290633901323539500793913248344324529170989990234375p822 | == 1.4290633901323539500793913248344324529170989990234375p822
; [HW: 1.4290633901323539500793913248344324529170989990234375p822] 

; mpf : + 1932329723918391 822
; mpfd: + 1932329723918391 822 (3.99676e+247) class: Pos. norm. non-zero
; hwf : + 1932329723918391 822 (3.99676e+247) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110101 #b0110110111010111000110010010110010000111100000110111)))
(assert (= r (fp #b0 #b11100110101 #b0110110111010111000110010010110010000111100000110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

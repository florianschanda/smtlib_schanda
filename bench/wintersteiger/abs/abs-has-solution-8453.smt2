(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9466512190718445740600373028428293764591217041015625p10 {+ 4263338077461785 10 (1993.37)}
; 1.9466512190718445740600373028428293764591217041015625p10 | == 1.9466512190718445740600373028428293764591217041015625p10
; [HW: 1.9466512190718445740600373028428293764591217041015625p10] 

; mpf : + 4263338077461785 10
; mpfd: + 4263338077461785 10 (1993.37) class: Pos. norm. non-zero
; hwf : + 4263338077461785 10 (1993.37) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000001001 #b1111001001010111101110111111101010100001110100011001)))
(assert (= r (fp #b0 #b10000001001 #b1111001001010111101110111111101010100001110100011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

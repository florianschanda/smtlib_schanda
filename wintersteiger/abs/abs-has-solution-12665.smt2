(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.48378975630815457265043733059428632259368896484375p830 {+ 2178795366235068 830 (1.06235e+250)}
; 1.48378975630815457265043733059428632259368896484375p830 | == 1.48378975630815457265043733059428632259368896484375p830
; [HW: 1.48378975630815457265043733059428632259368896484375p830] 

; mpf : + 2178795366235068 830
; mpfd: + 2178795366235068 830 (1.06235e+250) class: Pos. norm. non-zero
; hwf : + 2178795366235068 830 (1.06235e+250) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111101 #b0111101111011001101001010011110101111011101110111100)))
(assert (= r (fp #b0 #b11100111101 #b0111101111011001101001010011110101111011101110111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

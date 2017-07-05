(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.702129009201640119641751880408264696598052978515625p329 {+ 3162107944206522 329 (1.86149e+099)}
; 1.702129009201640119641751880408264696598052978515625p329 S == 1.845063147538121395285770631744526326656341552734375p164
; [HW: 1.845063147538121395285770631744526326656341552734375p164] 

; mpf : + 3805826076357222 164
; mpfd: + 3805826076357222 164 (4.3145e+049) class: Pos. norm. non-zero
; hwf : + 3805826076357222 164 (4.3145e+049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101001000 #b1011001110111110101110100000110000011000000010111010)))
(assert (= r (fp #b0 #b10010100011 #b1101100001010110000011101111010110111011001001100110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

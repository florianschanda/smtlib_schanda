(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.663714352742314162014736211858689785003662109375 765 {+ 2989103711690736 765 (3.22868e+230)}
; 1.663714352742314162014736211858689785003662109375 765 I == 1.663714352742314162014736211858689785003662109375 765
; [HW: 1.663714352742314162014736211858689785003662109375 765] 

; mpf : + 2989103711690736 765
; mpfd: + 2989103711690736 765 (3.22868e+230) class: Pos. norm. non-zero
; hwf : + 2989103711690736 765 (3.22868e+230) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111100 #b1010100111101001001011110000111011101001111111110000)))
(assert (= r (fp #b0 #b11011111100 #b1010100111101001001011110000111011101001111111110000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

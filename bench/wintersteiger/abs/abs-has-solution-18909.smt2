(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4068241001895052111336781308637000620365142822265625p770 {+ 1832172866018793 770 (8.73648e+231)}
; 1.4068241001895052111336781308637000620365142822265625p770 | == 1.4068241001895052111336781308637000620365142822265625p770
; [HW: 1.4068241001895052111336781308637000620365142822265625p770] 

; mpf : + 1832172866018793 770
; mpfd: + 1832172866018793 770 (8.73648e+231) class: Pos. norm. non-zero
; hwf : + 1832172866018793 770 (8.73648e+231) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000001 #b0110100000100101100111111100110110001001110111101001)))
(assert (= r (fp #b0 #b11100000001 #b0110100000100101100111111100110110001001110111101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

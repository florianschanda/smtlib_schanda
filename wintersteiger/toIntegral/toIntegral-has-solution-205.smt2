(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.13235472347469734444302957854233682155609130859375 455 {+ 596072683321372 455 (1.05349e+137)}
; 1.13235472347469734444302957854233682155609130859375 455 I == 1.13235472347469734444302957854233682155609130859375 455
; [HW: 1.13235472347469734444302957854233682155609130859375 455] 

; mpf : + 596072683321372 455
; mpfd: + 596072683321372 455 (1.05349e+137) class: Pos. norm. non-zero
; hwf : + 596072683321372 455 (1.05349e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000110 #b0010000111100001111111111100100011001011100000011100)))
(assert (= r (fp #b0 #b10111000110 #b0010000111100001111111111100100011001011100000011100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

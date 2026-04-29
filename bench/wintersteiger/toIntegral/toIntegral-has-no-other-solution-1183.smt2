(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.829432397468675919327552037429995834827423095703125 102 {+ 3735431436168946 102 (9.27632e+030)}
; 1.829432397468675919327552037429995834827423095703125 102 I == 1.829432397468675919327552037429995834827423095703125 102
; [HW: 1.829432397468675919327552037429995834827423095703125 102] 

; mpf : + 3735431436168946 102
; mpfd: + 3735431436168946 102 (9.27632e+030) class: Pos. norm. non-zero
; hwf : + 3735431436168946 102 (9.27632e+030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100101 #b1101010001010101101011100111110101011110111011110010)))
(assert (= r (fp #b0 #b10001100101 #b1101010001010101101011100111110101011110111011110010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

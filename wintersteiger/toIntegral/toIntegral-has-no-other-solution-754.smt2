(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.98183789820817946036868306691758334636688232421875 328 {+ 4421804792508588 328 (1.08369e+099)}
; 1.98183789820817946036868306691758334636688232421875 328 I == 1.98183789820817946036868306691758334636688232421875 328
; [HW: 1.98183789820817946036868306691758334636688232421875 328] 

; mpf : + 4421804792508588 328
; mpfd: + 4421804792508588 328 (1.08369e+099) class: Pos. norm. non-zero
; hwf : + 4421804792508588 328 (1.08369e+099) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000111 #b1111101101011001101110100111111011000111000010101100)))
(assert (= r (fp #b0 #b10101000111 #b1111101101011001101110100111111011000111000010101100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

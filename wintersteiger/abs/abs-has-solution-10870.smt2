(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.270683267283251982604497243301011621952056884765625p132 {+ 1219049061672282 132 (6.91826e+039)}
; 1.270683267283251982604497243301011621952056884765625p132 | == 1.270683267283251982604497243301011621952056884765625p132
; [HW: 1.270683267283251982604497243301011621952056884765625p132] 

; mpf : + 1219049061672282 132
; mpfd: + 1219049061672282 132 (6.91826e+039) class: Pos. norm. non-zero
; hwf : + 1219049061672282 132 (6.91826e+039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000011 #b0100010101001011011111111010010010001110010101011010)))
(assert (= r (fp #b0 #b10010000011 #b0100010101001011011111111010010010001110010101011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

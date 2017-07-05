(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.20570011627626083594577721669338643550872802734375p355 {+ 926390967011836 355 (8.84887e+106)}
; 1.20570011627626083594577721669338643550872802734375p355 | == 1.20570011627626083594577721669338643550872802734375p355
; [HW: 1.20570011627626083594577721669338643550872802734375p355] 

; mpf : + 926390967011836 355
; mpfd: + 926390967011836 355 (8.84887e+106) class: Pos. norm. non-zero
; hwf : + 926390967011836 355 (8.84887e+106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100010 #b0011010010101000110000110100100000110000100111111100)))
(assert (= r (fp #b0 #b10101100010 #b0011010010101000110000110100100000110000100111111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

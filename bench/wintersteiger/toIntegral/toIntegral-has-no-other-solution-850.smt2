(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.892409013433381748114925358095206320285797119140625 592 {- 4019052900360650 592 (-3.06741e+178)}
; -1.892409013433381748114925358095206320285797119140625 592 I == -1.892409013433381748114925358095206320285797119140625 592
; [HW: -1.892409013433381748114925358095206320285797119140625 592] 

; mpf : - 4019052900360650 592
; mpfd: - 4019052900360650 592 (-3.06741e+178) class: Neg. norm. non-zero
; hwf : - 4019052900360650 592 (-3.06741e+178) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001001111 #b1110010001110100111010101100011101011010000111001010)))
(assert (= r (fp #b1 #b11001001111 #b1110010001110100111010101100011101011010000111001010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

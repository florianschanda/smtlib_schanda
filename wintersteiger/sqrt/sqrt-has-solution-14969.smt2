(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.898895503257947314779130465467460453510284423828125p950 {+ 4048265453517506 950 (1.80716e+286)}
; 1.898895503257947314779130465467460453510284423828125p950 S == 1.378004173889885830561752300127409398555755615234375p475
; [HW: 1.378004173889885830561752300127409398555755615234375p475] 

; mpf : + 1702379456674982 475
; mpfd: + 1702379456674982 475 (1.34431e+143) class: Pos. norm. non-zero
; hwf : + 1702379456674982 475 (1.34431e+143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110101 #b1110011000011110000001000000010100000011101011000010)))
(assert (= r (fp #b0 #b10111011010 #b0110000011000100111000011010110010011011110010100110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

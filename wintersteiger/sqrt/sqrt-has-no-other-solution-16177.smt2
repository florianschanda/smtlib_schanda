(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3816258456906265195129890344105660915374755859375p864 {+ 1718690016447256 864 (1.69944e+260)}
; 1.3816258456906265195129890344105660915374755859375p864 S == 1.1754258146266087781128817368880845606327056884765625p432
; [HW: 1.1754258146266087781128817368880845606327056884765625p432] 

; mpf : + 790047633383561 432
; mpfd: + 790047633383561 432 (1.30363e+130) class: Pos. norm. non-zero
; hwf : + 790047633383561 432 (1.30363e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101011111 #b0110000110110010001110110011111010001100101100011000)))
(assert (= r (fp #b0 #b10110101111 #b0010110011101000101101001100100010110010000010001001)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

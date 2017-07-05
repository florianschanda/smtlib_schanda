(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3621606904906664592402876223786734044551849365234375 819 {+ 1631026750742007 819 (4.76206e+246)}
; 1.3621606904906664592402876223786734044551849365234375 819 I == 1.3621606904906664592402876223786734044551849365234375 819
; [HW: 1.3621606904906664592402876223786734044551849365234375 819] 

; mpf : + 1631026750742007 819
; mpfd: + 1631026750742007 819 (4.76206e+246) class: Pos. norm. non-zero
; hwf : + 1631026750742007 819 (4.76206e+246) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110010 #b0101110010110110100100000010000110001101110111110111)))
(assert (= r (fp #b0 #b11100110010 #b0101110010110110100100000010000110001101110111110111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

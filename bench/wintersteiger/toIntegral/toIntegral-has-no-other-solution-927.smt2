(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.548805499251384443226697840145789086818695068359375 218 {+ 2471600241927414 218 (6.52433e+065)}
; 1.548805499251384443226697840145789086818695068359375 218 I == 1.548805499251384443226697840145789086818695068359375 218
; [HW: 1.548805499251384443226697840145789086818695068359375 218] 

; mpf : + 2471600241927414 218
; mpfd: + 2471600241927414 218 (6.52433e+065) class: Pos. norm. non-zero
; hwf : + 2471600241927414 218 (6.52433e+065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011001 #b1000110001111110100001000110011100100110010011110110)))
(assert (= r (fp #b0 #b10011011001 #b1000110001111110100001000110011100100110010011110110)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

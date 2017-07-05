(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.35844064584046275712125861900858581066131591796875p719 {+ 1614273159041548 719 (3.74634e+216)}
; 1.35844064584046275712125861900858581066131591796875p719 | == 1.35844064584046275712125861900858581066131591796875p719
; [HW: 1.35844064584046275712125861900858581066131591796875p719] 

; mpf : + 1614273159041548 719
; mpfd: + 1614273159041548 719 (3.74634e+216) class: Pos. norm. non-zero
; hwf : + 1614273159041548 719 (3.74634e+216) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001110 #b0101101111000010110001000010001101110001001000001100)))
(assert (= r (fp #b0 #b11011001110 #b0101101111000010110001000010001101110001001000001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

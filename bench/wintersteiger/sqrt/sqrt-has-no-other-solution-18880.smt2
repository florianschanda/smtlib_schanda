(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3540547077541322806837342795915901660919189453125p-774 {+ 1594520649910280 -774 (1.36276e-233)}
; 1.3540547077541322806837342795915901660919189453125p-774 S == 1.1636385640542050712298305370495654642581939697265625p-387
; [HW: 1.1636385640542050712298305370495654642581939697265625p-387] 

; mpf : + 736962576097961 -387
; mpfd: + 736962576097961 -387 (3.69156e-117) class: Pos. norm. non-zero
; hwf : + 736962576097961 -387 (3.69156e-117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011111001 #b0101101010100011010101000100111011001100100000001000)))
(assert (= r (fp #b0 #b01001111100 #b0010100111100100001101111000100011111010001010101001)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5625763688409584073468749920721165835857391357421875 526 {+ 2533618725079587 526 (3.43257e+158)}
; 1.5625763688409584073468749920721165835857391357421875 526 I == 1.5625763688409584073468749920721165835857391357421875 526
; [HW: 1.5625763688409584073468749920721165835857391357421875 526] 

; mpf : + 2533618725079587 526
; mpfd: + 2533618725079587 526 (3.43257e+158) class: Pos. norm. non-zero
; hwf : + 2533618725079587 526 (3.43257e+158) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001101 #b1001000000000101000000010100000110101100101000100011)))
(assert (= r (fp #b0 #b11000001101 #b1001000000000101000000010100000110101100101000100011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

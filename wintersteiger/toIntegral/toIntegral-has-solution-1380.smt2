(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0033341952685062015149242142797447741031646728515625 768 {+ 15015880568825 768 (1.55769e+231)}
; 1.0033341952685062015149242142797447741031646728515625 768 I == 1.0033341952685062015149242142797447741031646728515625 768
; [HW: 1.0033341952685062015149242142797447741031646728515625 768] 

; mpf : + 15015880568825 768
; mpfd: + 15015880568825 768 (1.55769e+231) class: Pos. norm. non-zero
; hwf : + 15015880568825 768 (1.55769e+231) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011111111 #b0000000011011010100000101000001110100010111111111001)))
(assert (= r (fp #b0 #b11011111111 #b0000000011011010100000101000001110100010111111111001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

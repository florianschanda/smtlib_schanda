(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5301387946318831811964855660335160791873931884765625p742 {+ 2387532877958793 742 (3.53987e+223)}
; 1.5301387946318831811964855660335160791873931884765625p742 | == 1.5301387946318831811964855660335160791873931884765625p742
; [HW: 1.5301387946318831811964855660335160791873931884765625p742] 

; mpf : + 2387532877958793 742
; mpfd: + 2387532877958793 742 (3.53987e+223) class: Pos. norm. non-zero
; hwf : + 2387532877958793 742 (3.53987e+223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100101 #b1000011110110111001011010001000101001000111010001001)))
(assert (= r (fp #b0 #b11011100101 #b1000011110110111001011010001000101001000111010001001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

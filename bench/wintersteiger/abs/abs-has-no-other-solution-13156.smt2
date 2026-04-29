(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.546339642940996128572805901058018207550048828125p-708 {- 2460495012366800 -708 (-1.14833e-213)}
; -1.546339642940996128572805901058018207550048828125p-708 | == 1.546339642940996128572805901058018207550048828125p-708
; [HW: 1.546339642940996128572805901058018207550048828125p-708] 

; mpf : + 2460495012366800 -708
; mpfd: + 2460495012366800 -708 (1.14833e-213) class: Pos. norm. non-zero
; hwf : + 2460495012366800 -708 (1.14833e-213) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111011 #b1000101111011100111010100011001011110000100111010000)))
(assert (= r (fp #b0 #b00100111011 #b1000101111011100111010100011001011110000100111010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.531635566488615207703105625114403665065765380859375p660 {- 2394273739135030 660 (-7.32745e+198)}
; -1.531635566488615207703105625114403665065765380859375p660 | == 1.531635566488615207703105625114403665065765380859375p660
; [HW: 1.531635566488615207703105625114403665065765380859375p660] 

; mpf : + 2394273739135030 660
; mpfd: + 2394273739135030 660 (7.32745e+198) class: Pos. norm. non-zero
; hwf : + 2394273739135030 660 (7.32745e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010011 #b1000100000011001010001001011101101110101100000110110)))
(assert (= r (fp #b0 #b11010010011 #b1000100000011001010001001011101101110101100000110110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

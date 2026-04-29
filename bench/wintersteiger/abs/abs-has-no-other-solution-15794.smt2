(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5630322906471840749276225324138067662715911865234375p-858 {- 2535672014356215 -858 (-8.13264e-259)}
; -1.5630322906471840749276225324138067662715911865234375p-858 | == 1.5630322906471840749276225324138067662715911865234375p-858
; [HW: 1.5630322906471840749276225324138067662715911865234375p-858] 

; mpf : + 2535672014356215 -858
; mpfd: + 2535672014356215 -858 (8.13264e-259) class: Pos. norm. non-zero
; hwf : + 2535672014356215 -858 (8.13264e-259) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010100101 #b1001000000100010111000100101101011101011111011110111)))
(assert (= r (fp #b0 #b00010100101 #b1001000000100010111000100101101011101011111011110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

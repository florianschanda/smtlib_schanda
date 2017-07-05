(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5268603541825236380446995099191553890705108642578125p543 {- 2372768094772701 543 (-4.3963e+163)}
; -1.5268603541825236380446995099191553890705108642578125p543 | == 1.5268603541825236380446995099191553890705108642578125p543
; [HW: 1.5268603541825236380446995099191553890705108642578125p543] 

; mpf : + 2372768094772701 543
; mpfd: + 2372768094772701 543 (4.3963e+163) class: Pos. norm. non-zero
; hwf : + 2372768094772701 543 (4.3963e+163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011110 #b1000011011100000010100011111011011000101110111011101)))
(assert (= r (fp #b0 #b11000011110 #b1000011011100000010100011111011011000101110111011101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

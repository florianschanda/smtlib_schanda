(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.168636127173850791649556413176469504833221435546875p571 {- 759469599501358 571 (-9.03248e+171)}
; -1.168636127173850791649556413176469504833221435546875p571 | == 1.168636127173850791649556413176469504833221435546875p571
; [HW: 1.168636127173850791649556413176469504833221435546875p571] 

; mpf : + 759469599501358 571
; mpfd: + 759469599501358 571 (9.03248e+171) class: Pos. norm. non-zero
; hwf : + 759469599501358 571 (9.03248e+171) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111010 #b0010101100101011101111001011101100100010110000101110)))
(assert (= r (fp #b0 #b11000111010 #b0010101100101011101111001011101100100010110000101110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

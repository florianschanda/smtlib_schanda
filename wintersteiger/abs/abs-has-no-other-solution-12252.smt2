(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.065950046034028986241537495516240596771240234375p653 {+ 297012602743920 653 (3.98404e+196)}
; 1.065950046034028986241537495516240596771240234375p653 | == 1.065950046034028986241537495516240596771240234375p653
; [HW: 1.065950046034028986241537495516240596771240234375p653] 

; mpf : + 297012602743920 653
; mpfd: + 297012602743920 653 (3.98404e+196) class: Pos. norm. non-zero
; hwf : + 297012602743920 653 (3.98404e+196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001100 #b0001000011100010000110100010101011100010110001110000)))
(assert (= r (fp #b0 #b11010001100 #b0001000011100010000110100010101011100010110001110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.655190314948406626882615455542691051959991455078125 1 {+ 2950714858258402 1 (3.31038)}
; 1.655190314948406626882615455542691051959991455078125 1 I == 1.0 2
; [HW: 1.0 2] 

; mpf : + 0 2
; mpfd: + 0 2 (4) class: Pos. norm. non-zero
; hwf : + 0 2 (4) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000000000 #b1010011110111010100011010110111101011011111111100010)))
(assert (= r (fp #b0 #b10000000001 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

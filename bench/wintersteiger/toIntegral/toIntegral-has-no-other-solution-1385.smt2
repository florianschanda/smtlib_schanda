(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.099691056681417311580162277095951139926910400390625 660 {+ 448968605722602 660 (5.26099e+198)}
; 1.099691056681417311580162277095951139926910400390625 660 I == 1.099691056681417311580162277095951139926910400390625 660
; [HW: 1.099691056681417311580162277095951139926910400390625 660] 

; mpf : + 448968605722602 660
; mpfd: + 448968605722602 660 (5.26099e+198) class: Pos. norm. non-zero
; hwf : + 448968605722602 660 (5.26099e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010011 #b0001100110000101010110100110010000100110011111101010)))
(assert (= r (fp #b0 #b11010010011 #b0001100110000101010110100110010000100110011111101010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)

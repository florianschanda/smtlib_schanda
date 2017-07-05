(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.36118221063859667907536277198232710361480712890625p394 {+ 1626620069244836 394 (5.49205e+118)}
; 1.36118221063859667907536277198232710361480712890625p394 | == 1.36118221063859667907536277198232710361480712890625p394
; [HW: 1.36118221063859667907536277198232710361480712890625p394] 

; mpf : + 1626620069244836 394
; mpfd: + 1626620069244836 394 (5.49205e+118) class: Pos. norm. non-zero
; hwf : + 1626620069244836 394 (5.49205e+118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110001001 #b0101110001110110011011111111011010010110111110100100)))
(assert (= r (fp #b0 #b10110001001 #b0101110001110110011011111111011010010110111110100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

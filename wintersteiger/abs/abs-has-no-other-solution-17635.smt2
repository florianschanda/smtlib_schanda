(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1178012208656593617916996663552708923816680908203125p927 {- 530529534394373 927 (-1.26815e+279)}
; -1.1178012208656593617916996663552708923816680908203125p927 | == 1.1178012208656593617916996663552708923816680908203125p927
; [HW: 1.1178012208656593617916996663552708923816680908203125p927] 

; mpf : + 530529534394373 927
; mpfd: + 530529534394373 927 (1.26815e+279) class: Pos. norm. non-zero
; hwf : + 530529534394373 927 (1.26815e+279) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011110 #b0001111000101000001110001000011100001100000000000101)))
(assert (= r (fp #b0 #b11110011110 #b0001111000101000001110001000011100001100000000000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

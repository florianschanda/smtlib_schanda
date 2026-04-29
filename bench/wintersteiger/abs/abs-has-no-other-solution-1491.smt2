(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4414116368089928688078771301661618053913116455078125p304 {+ 1987941283049981 304 (4.69793e+091)}
; 1.4414116368089928688078771301661618053913116455078125p304 | == 1.4414116368089928688078771301661618053913116455078125p304
; [HW: 1.4414116368089928688078771301661618053913116455078125p304] 

; mpf : + 1987941283049981 304
; mpfd: + 1987941283049981 304 (4.69793e+091) class: Pos. norm. non-zero
; hwf : + 1987941283049981 304 (4.69793e+091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100101111 #b0111000100000000010110100110000000101011000111111101)))
(assert (= r (fp #b0 #b10100101111 #b0111000100000000010110100110000000101011000111111101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

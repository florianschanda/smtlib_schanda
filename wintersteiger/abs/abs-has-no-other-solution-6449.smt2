(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.653555936189608832620479006436653435230255126953125p768 {- 2943354270689298 768 (-2.56718e+231)}
; -1.653555936189608832620479006436653435230255126953125p768 | == 1.653555936189608832620479006436653435230255126953125p768
; [HW: 1.653555936189608832620479006436653435230255126953125p768] 

; mpf : + 2943354270689298 768
; mpfd: + 2943354270689298 768 (2.56718e+231) class: Pos. norm. non-zero
; hwf : + 2943354270689298 768 (2.56718e+231) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111111 #b1010011101001111011100010001110000001010100000010010)))
(assert (= r (fp #b0 #b11011111111 #b1010011101001111011100010001110000001010100000010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2975963421719267643084094743244349956512451171875p1016 {+ 1340254775712312 1016 (9.11203e+305)}
; 1.2975963421719267643084094743244349956512451171875p1016 | == 1.2975963421719267643084094743244349956512451171875p1016
; [HW: 1.2975963421719267643084094743244349956512451171875p1016] 

; mpf : + 1340254775712312 1016
; mpfd: + 1340254775712312 1016 (9.11203e+305) class: Pos. norm. non-zero
; hwf : + 1340254775712312 1016 (9.11203e+305) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110111 #b0100110000101111010001100001110100001001101000111000)))
(assert (= r (fp #b0 #b11111110111 #b0100110000101111010001100001110100001001101000111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

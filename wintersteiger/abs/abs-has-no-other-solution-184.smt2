(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.251187628370086901696822678786702454090118408203125p258 {+ 1131248509527602 258 (5.79511e+077)}
; 1.251187628370086901696822678786702454090118408203125p258 | == 1.251187628370086901696822678786702454090118408203125p258
; [HW: 1.251187628370086901696822678786702454090118408203125p258] 

; mpf : + 1131248509527602 258
; mpfd: + 1131248509527602 258 (5.79511e+077) class: Pos. norm. non-zero
; hwf : + 1131248509527602 258 (5.79511e+077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000001 #b0100000001001101110101010001100100000010011000110010)))
(assert (= r (fp #b0 #b10100000001 #b0100000001001101110101010001100100000010011000110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9005389996884975989388522066292352974414825439453125p967 {+ 4055667103429717 967 (2.37073e+291)}
; 1.9005389996884975989388522066292352974414825439453125p967 | == 1.9005389996884975989388522066292352974414825439453125p967
; [HW: 1.9005389996884975989388522066292352974414825439453125p967] 

; mpf : + 4055667103429717 967
; mpfd: + 4055667103429717 967 (2.37073e+291) class: Pos. norm. non-zero
; hwf : + 4055667103429717 967 (2.37073e+291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000110 #b1110011010001001101110010101000001101111010001010101)))
(assert (= r (fp #b0 #b11111000110 #b1110011010001001101110010101000001101111010001010101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

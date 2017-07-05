(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9709121849963600059396640062914229929447174072265625 107 {+ 4372599754559081 107 (3.19799e+032)}
; 1.9709121849963600059396640062914229929447174072265625 107 I == 1.9709121849963600059396640062914229929447174072265625 107
; [HW: 1.9709121849963600059396640062914229929447174072265625 107] 

; mpf : + 4372599754559081 107
; mpfd: + 4372599754559081 107 (3.19799e+032) class: Pos. norm. non-zero
; hwf : + 4372599754559081 107 (3.19799e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001101010 #b1111100010001101101100110111000111011000111001101001)))
(assert (= r (fp #b0 #b10001101010 #b1111100010001101101100110111000111011000111001101001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4499611751743091137001329116174019873142242431640625p-539 {+ 2026444980846209 -539 (8.05728e-163)}
; 1.4499611751743091137001329116174019873142242431640625p-539 | == 1.4499611751743091137001329116174019873142242431640625p-539
; [HW: 1.4499611751743091137001329116174019873142242431640625p-539] 

; mpf : + 2026444980846209 -539
; mpfd: + 2026444980846209 -539 (8.05728e-163) class: Pos. norm. non-zero
; hwf : + 2026444980846209 -539 (8.05728e-163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111100100 #b0111001100110000101001111101001111010111111010000001)))
(assert (= r (fp #b0 #b00111100100 #b0111001100110000101001111101001111010111111010000001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

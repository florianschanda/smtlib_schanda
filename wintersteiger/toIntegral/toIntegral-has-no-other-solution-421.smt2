(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.406165492751866086251766319037415087223052978515625 12 {+ 1829206761808058 12 (5759.65)}
; 1.406165492751866086251766319037415087223052978515625 12 I == 1.406005859375 12
; [HW: 1.406005859375 12] 

; mpf : + 1828487836991488 12
; mpfd: + 1828487836991488 12 (5759) class: Pos. norm. non-zero
; hwf : + 1828487836991488 12 (5759) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000001011 #b0110011111111010011101100011010000100010000010111010)))
(assert (= r (fp #b0 #b10000001011 #b0110011111110000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

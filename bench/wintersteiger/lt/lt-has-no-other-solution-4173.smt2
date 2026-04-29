(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.951629212036423144382979444344528019428253173828125p99 {+ 4285756964722114 99 (1.23699e+030)}
; Y = 1.4992445100913245337181933791725896298885345458984375p-480 {+ 2248397389614055 -480 (4.80258e-145)}
; 1.951629212036423144382979444344528019428253173828125p99 < 1.4992445100913245337181933791725896298885345458984375p-480 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001100010 #b1111001110011101111110001101011110011101010111000010)))
(assert (= y (fp #b0 #b01000011111 #b0111111111001110011111001111101110001100101111100111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

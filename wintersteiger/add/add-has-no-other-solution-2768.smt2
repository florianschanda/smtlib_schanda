(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.611176797814383387930092794704250991344451904296875p-477 {+ 2752495598894350 -477 (4.12891e-144)}
; Y = 1.4912383935539512691548225120641291141510009765625p-591 {+ 2212341046159656 -591 (1.84001e-178)}
; 1.611176797814383387930092794704250991344451904296875p-477 + 1.4912383935539512691548225120641291141510009765625p-591 == 1.6111767978143836099746977197355590760707855224609375p-477
; [HW: 1.6111767978143836099746977197355590760707855224609375p-477] 

; mpf : + 2752495598894351 -477
; mpfd: + 2752495598894351 -477 (4.12891e-144) class: Pos. norm. non-zero
; hwf : + 2752495598894351 -477 (4.12891e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100010 #b1001110001110110000101010010011010101111110100001110)))
(assert (= y (fp #b0 #b00110110000 #b0111110111000001110011001010001011011010100100101000)))
(assert (= r (fp #b0 #b01000100010 #b1001110001110110000101010010011010101111110100001111)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)

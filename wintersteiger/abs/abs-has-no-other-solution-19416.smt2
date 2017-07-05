(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7682128283746185726243993485695682466030120849609375p-361 {+ 3459723007609167 -361 (3.76449e-109)}
; 1.7682128283746185726243993485695682466030120849609375p-361 | == 1.7682128283746185726243993485695682466030120849609375p-361
; [HW: 1.7682128283746185726243993485695682466030120849609375p-361] 

; mpf : + 3459723007609167 -361
; mpfd: + 3459723007609167 -361 (3.76449e-109) class: Pos. norm. non-zero
; hwf : + 3459723007609167 -361 (3.76449e-109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010010110 #b1100010010101001100110001000111000111100100101001111)))
(assert (= r (fp #b0 #b01010010110 #b1100010010101001100110001000111000111100100101001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

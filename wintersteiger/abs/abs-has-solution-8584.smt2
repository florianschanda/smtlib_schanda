(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4297436755175014777563546886085532605648040771484375p-546 {- 1935393456925447 -546 (-6.20698e-165)}
; -1.4297436755175014777563546886085532605648040771484375p-546 | == 1.4297436755175014777563546886085532605648040771484375p-546
; [HW: 1.4297436755175014777563546886085532605648040771484375p-546] 

; mpf : + 1935393456925447 -546
; mpfd: + 1935393456925447 -546 (6.20698e-165) class: Pos. norm. non-zero
; hwf : + 1935393456925447 -546 (6.20698e-165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011101 #b0110111000000011101011100111100000000010101100000111)))
(assert (= r (fp #b0 #b00111011101 #b0110111000000011101011100111100000000010101100000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

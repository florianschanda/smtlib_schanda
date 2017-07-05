(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.264222662321866419432581096771173179149627685546875p-74 {+ 1189953083575598 -74 (6.69274e-023)}
; 1.264222662321866419432581096771173179149627685546875p-74 S == 1.1243765660675546502744737153989262878894805908203125p-37
; [HW: 1.1243765660675546502744737153989262878894805908203125p-37] 

; mpf : + 560142256595461 -37
; mpfd: + 560142256595461 -37 (8.18092e-012) class: Pos. norm. non-zero
; hwf : + 560142256595461 -37 (8.18092e-012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110101 #b0100001110100100000110001010110110001000110100101110)))
(assert (= r (fp #b0 #b01111011010 #b0001111111010111001001001000001110100110001000000101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.970602424482053915966162094264291226863861083984375p-968 {- 4371204717222278 -968 (-7.89884e-292)}
; -1.970602424482053915966162094264291226863861083984375p-968 | == 1.970602424482053915966162094264291226863861083984375p-968
; [HW: 1.970602424482053915966162094264291226863861083984375p-968] 

; mpf : + 4371204717222278 -968
; mpfd: + 4371204717222278 -968 (7.89884e-292) class: Pos. norm. non-zero
; hwf : + 4371204717222278 -968 (7.89884e-292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000110111 #b1111100001111001011001101000011010010001100110000110)))
(assert (= r (fp #b0 #b00000110111 #b1111100001111001011001101000011010010001100110000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2208134815075639689752051708637736737728118896484375p-324 {- 994455513035847 -324 (-3.57216e-098)}
; Y = 1.25543380967616347021476030931808054447174072265625p-1021 {+ 1150371610075396 -1021 (5.58687e-308)}
; -1.2208134815075639689752051708637736737728118896484375p-324 * 1.25543380967616347021476030931808054447174072265625p-1021 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010111011 #b0011100010000111001110110111100110010111010001000111)))
(assert (= y (fp #b0 #b00000000010 #b0100000101100100000111000011001011011010000100000100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

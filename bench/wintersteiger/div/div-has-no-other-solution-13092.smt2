(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9355358060826006738608384694089181721210479736328125p-548 {- 4213278707665357 -548 (-2.1007e-165)}
; Y = -1.3926668029868103371171628168667666614055633544921875p529 {- 1768414067612163 529 (-2.44746e+159)}
; -1.9355358060826006738608384694089181721210479736328125p-548 / -1.3926668029868103371171628168667666614055633544921875p529 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011011 #b1110111101111111010001100100101101011100100111001101)))
(assert (= y (fp #b1 #b11000010000 #b0110010010000101110011111100010100001101101000000011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

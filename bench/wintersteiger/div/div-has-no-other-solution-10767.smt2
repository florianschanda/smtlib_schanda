(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7955799131749621277975847988273017108440399169921875p-533 {- 3582973400518211 -533 (-6.38583e-161)}
; Y = 1.31684937733319262775921743013896048069000244140625p969 {+ 1426962737690340 969 (6.57055e+291)}
; -1.7955799131749621277975847988273017108440399169921875p-533 / 1.31684937733319262775921743013896048069000244140625p969 == -zero
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
(assert (= x (fp #b1 #b00111101010 #b1100101110101011001000000000110001110000111001000011)))
(assert (= y (fp #b0 #b11111001000 #b0101000100011101000010100111000101100111011011100100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

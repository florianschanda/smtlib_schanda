(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0493546082930997886961677068029530346393585205078125p-366 {+ 222273395517821 -366 (6.98142e-111)}
; Y = -1.874361071821927904323956681764684617519378662109375p854 {- 3937772197244502 854 (-2.25149e+257)}
; 1.0493546082930997886961677068029530346393585205078125p-366 / -1.874361071821927904323956681764684617519378662109375p854 == -zero
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
(assert (= x (fp #b0 #b01010010001 #b0000110010100010100000001110110010000110100101111101)))
(assert (= y (fp #b1 #b11101010101 #b1101111111010110001000001001000001011110111001010110)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

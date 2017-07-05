(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9796677051171214234415174360037781298160552978515625p-282 {+ 4412031111712377 -282 (2.54761e-085)}
; Y = -zero {- 0 -1023 (-0)}
; 1.9796677051171214234415174360037781298160552978515625p-282 - -zero == 1.9796677051171214234415174360037781298160552978515625p-282
; [HW: 1.9796677051171214234415174360037781298160552978515625p-282] 

; mpf : + 4412031111712377 -282
; mpfd: + 4412031111712377 -282 (2.54761e-085) class: Pos. norm. non-zero
; hwf : + 4412031111712377 -282 (2.54761e-085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011100101 #b1111101011001011100000001011001001101100111001111001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b01011100101 #b1111101011001011100000001011001001101100111001111001)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)

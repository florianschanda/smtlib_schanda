(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.521078847767139752278353626024909317493438720703125p-457 {+ 2346730504634738 -457 (4.08737e-138)}
; Y = -1.5567809310663047739353714860044419765472412109375p-863 {- 2507518393677208 -863 (-2.53129e-260)}
; 1.521078847767139752278353626024909317493438720703125p-457 * -1.5567809310663047739353714860044419765472412109375p-863 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000110110 #b1000010101100101011011000110000111001100000101110010)))
(assert (= y (fp #b1 #b00010100000 #b1000111010001001001100011111000111110111010110011000)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.205435558050058642010071707773022353649139404296875p114 {- 925199502682894 114 (-2.50359e+034)}
; Y = -1.792423508851265001595720605109818279743194580078125p-566 {- 3568758219182178 -566 (-7.42101e-171)}
; -1.205435558050058642010071707773022353649139404296875p114 + -1.792423508851265001595720605109818279743194580078125p-566 == -1.205435558050058642010071707773022353649139404296875p114
; [HW: -1.205435558050058642010071707773022353649139404296875p114] 

; mpf : - 925199502682894 114
; mpfd: - 925199502682894 114 (-2.50359e+034) class: Neg. norm. non-zero
; hwf : - 925199502682894 114 (-2.50359e+034) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001110001 #b0011010010010111011011001011101101000010101100001110)))
(assert (= y (fp #b1 #b00111001001 #b1100101011011100010001000101111100011001000001100010)))
(assert (= r (fp #b1 #b10001110001 #b0011010010010111011011001011101101000010101100001110)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8033498625848121132975165892275981605052947998046875p638 {- 3617966141785099 638 (-2.05692e+192)}
; Y = 1.267573478960749344679470596020109951496124267578125p821 {+ 1205043820141858 821 (1.77255e+247)}
; -1.8033498625848121132975165892275981605052947998046875p638 % 1.267573478960749344679470596020109951496124267578125p821 == -1.8033498625848121132975165892275981605052947998046875p638
; [HW: -1.8033498625848121132975165892275981605052947998046875p638] 

; mpf : - 3617966141785099 638
; mpfd: - 3617966141785099 638 (-2.05692e+192) class: Neg. norm. non-zero
; hwf : - 3617966141785099 638 (-2.05692e+192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001111101 #b1100110110101000010101100010101100001100010000001011)))
(assert (= y (fp #b0 #b11100110100 #b0100010001111111101100100000110101101001110100100010)))
(assert (= r (fp #b1 #b11001111101 #xcda8562b0c40b)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

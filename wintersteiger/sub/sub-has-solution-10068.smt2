(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5974217931738063924740345100872218608856201171875p-217 {+ 2690548565120568 -217 (7.58421e-066)}
; Y = 1.92173083643964393019132330664433538913726806640625p643 {+ 4151106651525476 643 (7.01423e+193)}
; 1.5974217931738063924740345100872218608856201171875p-217 - 1.92173083643964393019132330664433538913726806640625p643 == -1.92173083643964393019132330664433538913726806640625p643
; [HW: -1.92173083643964393019132330664433538913726806640625p643] 

; mpf : - 4151106651525476 643
; mpfd: - 4151106651525476 643 (-7.01423e+193) class: Neg. norm. non-zero
; hwf : - 4151106651525476 643 (-7.01423e+193) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100110 #b1001100011110000101000100111011110011001011000111000)))
(assert (= y (fp #b0 #b11010000010 #b1110101111110110100011010101011000111001000101100100)))
(assert (= r (fp #b1 #b11010000010 #b1110101111110110100011010101011000111001000101100100)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)

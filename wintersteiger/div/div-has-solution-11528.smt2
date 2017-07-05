(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6327598428499585647699632318108342587947845458984375p-616 {- 2849696992474087 -616 (-6.00406e-186)}
; Y = 1.95576237083133985805716292816214263439178466796875p664 {+ 4304371057130764 664 (1.49704e+200)}
; -1.6327598428499585647699632318108342587947845458984375p-616 / 1.95576237083133985805716292816214263439178466796875p664 == -zero
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
(assert (= x (fp #b1 #b00110010111 #b1010000111111100100011001000111101000011001111100111)))
(assert (= y (fp #b0 #b11010010111 #b1111010010101100110101111011110101110111110100001100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

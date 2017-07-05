(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.012566250475365858818577180500142276287078857421875p-589 {- 56593360958302 -589 (-4.99754e-178)}
; Y = -1.0748391957513645511568256551981903612613677978515625p-138 {- 337045774098553 -138 (-3.08464e-042)}
; -1.012566250475365858818577180500142276287078857421875p-589 * -1.0748391957513645511568256551981903612613677978515625p-138 == 1.0883458943059169943268216229625977575778961181640625p-727
; [HW: 1.0883458943059169943268216229625977575778961181640625p-727] 

; mpf : + 397874536675841 -727
; mpfd: + 397874536675841 -727 (1.54156e-219) class: Pos. norm. non-zero
; hwf : + 397874536675841 -727 (1.54156e-219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110010 #b0000001100110111100010101011001011010011001101011110)))
(assert (= y (fp #b1 #b01101110101 #b0001001100101000101010010101101000110110000001111001)))
(assert (= r (fp #b0 #b00100101000 #b0001011010011101110101100010011011000111101000000001)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

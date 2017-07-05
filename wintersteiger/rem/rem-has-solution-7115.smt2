(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.005743261426827128701688707224093377590179443359375p-700 {+ 25865350021750 -700 (1.91201e-211)}
; Y = -1.117504060592620529490659464499913156032562255859375p1001 {- 529191243499446 1001 (-2.39483e+301)}
; 1.005743261426827128701688707224093377590179443359375p-700 % -1.117504060592620529490659464499913156032562255859375p1001 == 1.005743261426827128701688707224093377590179443359375p-700
; [HW: 1.005743261426827128701688707224093377590179443359375p-700] 

; mpf : + 25865350021750 -700
; mpfd: + 25865350021750 -700 (1.91201e-211) class: Pos. norm. non-zero
; hwf : + 25865350021750 -700 (1.91201e-211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000011 #b0000000101111000011000111111000000000000001001110110)))
(assert (= y (fp #b1 #b11111101000 #b0001111000010100101111110000000101100100011110110110)))
(assert (= r (fp #b0 #b00101000011 #x017863f000276)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)

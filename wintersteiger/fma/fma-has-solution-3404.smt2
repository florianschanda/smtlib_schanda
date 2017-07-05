(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3354826394489098806417359810438938438892364501953125p133 {+ 1510879490011381 133 (1.45421e+040)}
; Y = 1.481672048716628165010433804127387702465057373046875p974 {+ 2169258059114990 974 (2.36574e+293)}
; Z = -1.268718600397537699109307141043245792388916015625p-998 {- 1210200988617872 -998 (-4.7362e-301)}
; 1.3354826394489098806417359810438938438892364501953125p133 x 1.481672048716628165010433804127387702465057373046875p974 -1.268718600397537699109307141043245792388916015625p-998 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000100 #b0101010111100010001100001011010011001111000011110101)))
(assert (= y (fp #b0 #b11111001101 #b0111101101001110110111000000000010100010100111101110)))
(assert (= z (fp #b1 #b00000011001 #b0100010011001010101111100000000010001000110010010000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)

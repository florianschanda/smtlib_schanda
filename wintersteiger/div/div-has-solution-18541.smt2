(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.66257394769794331068624160252511501312255859375p701 {- 2983967783957856 701 (-1.74907e+211)}
; Y = 1.28347419277915353319485802785493433475494384765625p-575 {+ 1276654268969348 -575 (1.03786e-173)}
; -1.66257394769794331068624160252511501312255859375p701 / 1.28347419277915353319485802785493433475494384765625p-575 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010111100 #b1010100110011110011100100011110010001011010101100000)))
(assert (= y (fp #b0 #b00111000000 #b0100100010010001110000111100001100111111000110000100)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)

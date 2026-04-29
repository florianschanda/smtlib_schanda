(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.949056133220647080150911278906278312206268310546875p606 {- 4274168847926190 606 (-5.17609e+182)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.949056133220647080150911278906278312206268310546875p606 - -oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011101 #b1111001011110101010101111011111001000000001110101110)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)

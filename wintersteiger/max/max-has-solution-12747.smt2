(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.25195052180370769434603062109090387821197509765625p-623 {- 1134684276110980 -623 (-3.59666e-188)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.25195052180370769434603062109090387821197509765625p-623 M -oo == -1.25195052180370769434603062109090387821197509765625p-623
; [HW: -1.25195052180370769434603062109090387821197509765625p-623] 

; mpf : - 1134684276110980 -623
; mpfd: - 1134684276110980 -623 (-3.59666e-188) class: Neg. norm. non-zero
; hwf : - 1134684276110980 -623 (-3.59666e-188) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110010000 #b0100000001111111110101000101001101011011011010000100)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b1 #b00110010000 #b0100000001111111110101000101001101011011011010000100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

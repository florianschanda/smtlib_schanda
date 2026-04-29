(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.381067651538913754194481953163631260395050048828125p361 {+ 1716176133473602 361 (6.48699e+108)}
; Y = 1.5360725310894449702203701235703192651271820068359375p-758 {+ 2414256051257983 -758 (1.01315e-228)}
; 1.381067651538913754194481953163631260395050048828125p361 / 1.5360725310894449702203701235703192651271820068359375p-758 == +oo
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
(assert (= x (fp #b0 #b10101101000 #b0110000110001101101001100100110011101100010101000010)))
(assert (= y (fp #b0 #b00100001001 #b1000100100111100000011001010010101010000001001111111)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)

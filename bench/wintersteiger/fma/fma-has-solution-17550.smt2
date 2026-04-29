(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2654199632024056842993786631268449127674102783203125p824 {+ 1195345247375045 824 (1.41563e+248)}
; Y = -1.039693320453350278143034302047453820705413818359375p1012 {- 178762823202806 1012 (-4.56311e+304)}
; Z = -oo {- 0 1024 (-1.#INF)}
; 1.2654199632024056842993786631268449127674102783203125p824 x -1.039693320453350278143034302047453820705413818359375p1012 -oo == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110111 #b0100001111110010100100000000110110101000111011000101)))
(assert (= y (fp #b1 #b11111110011 #b0000101000101001010101110110100100110111011111110110)))
(assert (= z (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)

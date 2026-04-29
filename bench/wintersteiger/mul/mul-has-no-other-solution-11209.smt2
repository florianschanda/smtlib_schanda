(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.136451581697700330408906665979884564876556396484375p686 {- 614523292487878 686 (-3.64861e+206)}
; Y = 1.7906257928310365112878344007185660302639007568359375p341 {+ 3560662025983359 341 (8.02109e+102)}
; -1.136451581697700330408906665979884564876556396484375p686 * 1.7906257928310365112878344007185660302639007568359375p341 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010101101 #b0010001011101110011111011010100011100001000011000110)))
(assert (= y (fp #b0 #b10101010100 #b1100101001100110011100111011001110010101010101111111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)

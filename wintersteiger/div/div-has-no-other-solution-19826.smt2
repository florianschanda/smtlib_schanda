(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6948403717457392048117981175892055034637451171875p622 {+ 3129282839276088 622 (2.94976e+187)}
; Y = 1.9937620307817740528122385512688197195529937744140625p-759 {+ 4475506311523745 -759 (6.57516e-229)}
; 1.6948403717457392048117981175892055034637451171875p622 / 1.9937620307817740528122385512688197195529937744140625p-759 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001101101 #b1011000111100001000011110000000010010110101000111000)))
(assert (= y (fp #b0 #b00100001000 #b1111111001100111001100000011111000110110110110100001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)

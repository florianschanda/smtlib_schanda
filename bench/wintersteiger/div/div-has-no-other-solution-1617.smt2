(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.097345765179139842615541056147776544094085693359375p283 {+ 438406351786870 283 (1.70542e+085)}
; Y = 1.9797897096060086408186862172442488372325897216796875p-851 {+ 4412580571083067 -851 (1.31854e-256)}
; 1.097345765179139842615541056147776544094085693359375p283 / 1.9797897096060086408186862172442488372325897216796875p-851 == +oo
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
(assert (= x (fp #b0 #b10100011010 #b0001100011101011101001101110110111011001001101110110)))
(assert (= y (fp #b0 #b00010101100 #b1111101011010011011111111001011110110111000100111011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)

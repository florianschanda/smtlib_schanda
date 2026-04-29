(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8784500115746565196417350307456217706203460693359375p490 {- 3956187144791231 490 (-6.00479e+147)}
; Y = -1.7501509660881600094484156215912662446498870849609375p-645 {- 3378379611346255 -645 (-1.19875e-194)}
; -1.8784500115746565196417350307456217706203460693359375p490 / -1.7501509660881600094484156215912662446498870849609375p-645 == +oo
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
(assert (= x (fp #b1 #b10111101001 #b1110000011100010000110011001011011100010010010111111)))
(assert (= y (fp #b1 #b00101111010 #b1100000000001001111001001100101001101001010101001111)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)

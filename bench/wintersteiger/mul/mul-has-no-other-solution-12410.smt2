(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5067554307266550761568169036763720214366912841796875p328 {+ 2282223568988539 328 (8.23913e+098)}
; Y = 1.70216539585432968806344433687627315521240234375p978 {+ 3162271815122016 978 (4.34848e+294)}
; 1.5067554307266550761568169036763720214366912841796875p328 * 1.70216539585432968806344433687627315521240234375p978 == +oo
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
(assert (= x (fp #b0 #b10101000111 #b1000000110111010101110010101001000001010100101111011)))
(assert (= y (fp #b0 #b11111010001 #b1011001111000001000111001000001110010011110001100000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

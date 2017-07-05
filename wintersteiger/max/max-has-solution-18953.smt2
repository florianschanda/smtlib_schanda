(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3323143983691820846360087671200744807720184326171875p-610 {+ 1496611000665299 -610 (3.13552e-184)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.3323143983691820846360087671200744807720184326171875p-610 M +oo == +oo
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
(assert (= x (fp #b0 #b00110011101 #b0101010100010010100011100111000011111100010011010011)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

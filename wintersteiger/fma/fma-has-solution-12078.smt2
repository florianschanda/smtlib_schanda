(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.7262058042744750085972782471799291670322418212890625p148 {+ 3270540189524817 148 (6.15931e+044)}
; Z = 1.0587967458482110405526555041433311998844146728515625p-532 {+ 264797002692601 -532 (7.53104e-161)}
; +oo x 1.7262058042744750085972782471799291670322418212890625p148 1.0587967458482110405526555041433311998844146728515625p-532 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10010010011 #b1011100111101000100111111010001110000110001101010001)))
(assert (= z (fp #b0 #b00111101011 #b0000111100001101010011011011010010000111011111111001)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)

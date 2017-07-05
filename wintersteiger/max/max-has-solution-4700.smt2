(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7960705430991759090630921491538174450397491455078125p825 {+ 3585183001262077 825 (4.01855e+248)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.7960705430991759090630921491538174450397491455078125p825 M +oo == +oo
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
(assert (= x (fp #b0 #b11100111000 #b1100101111001011010001110111001111101011011111111101)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

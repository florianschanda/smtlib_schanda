(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.95440268740089972965279230265878140926361083984375p-896 {- 4298247587340092 -896 (-3.69946e-270)}
; +oo M -1.95440268740089972965279230265878140926361083984375p-896 == +oo
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
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b00001111111 #b1111010001010011101111000000100110011001111100111100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)

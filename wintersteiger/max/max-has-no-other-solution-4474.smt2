(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.67115122638705937418990288279019296169281005859375p-333 {- 3022596413066012 -333 (-9.55052e-101)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.67115122638705937418990288279019296169281005859375p-333 M +oo == +oo
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
(assert (= x (fp #b1 #b01010110010 #b1010101111010000100100010001100000000000101100011100)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8577313770532402070756461398559622466564178466796875p702 {- 3862878710080955 702 (-3.90877e+211)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.8577313770532402070756461398559622466564178466796875p702 M +oo == +oo
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
(assert (= x (fp #b1 #b11010111101 #b1101101110010100010010001001010100110010010110111011)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

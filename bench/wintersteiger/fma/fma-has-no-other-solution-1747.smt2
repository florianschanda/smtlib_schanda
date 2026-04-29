(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.68147013565501257659207112737931311130523681640625p-116 {- 3069068649000036 -116 (-2.024e-035)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = 1.28865847062380733945019528619013726711273193359375p-922 {+ 1300002180738716 -922 (3.63481e-278)}
; -1.68147013565501257659207112737931311130523681640625p-116 x -oo 1.28865847062380733945019528619013726711273193359375p-922 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110001011 #b1010111001110100110100111010100111010110110001100100)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b0 #b00001100101 #b0100100111100101100001011000001100001010111010011100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)

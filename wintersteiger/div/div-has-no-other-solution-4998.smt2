(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5678220557837170279213978574262000620365142822265625p277 {- 2557243198840297 277 (-3.8072e+083)}
; Y = -1.8972622568394876818587135858251713216304779052734375p-972 {- 4040909965555927 -972 (-4.75304e-293)}
; -1.5678220557837170279213978574262000620365142822265625p277 / -1.8972622568394876818587135858251713216304779052734375p-972 == +oo
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
(assert (= x (fp #b1 #b10100010100 #b1001000101011100110010010100011110001001110111101001)))
(assert (= y (fp #b1 #b00000110011 #b1110010110110010111110101011000100001111100011010111)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)

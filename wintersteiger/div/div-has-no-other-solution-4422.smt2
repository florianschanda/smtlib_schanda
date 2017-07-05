(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.139647937243876807400511097512207925319671630859375p563 {- 628918398134582 563 (-3.44079e+169)}
; Y = -1.0155377936253078274830841110087931156158447265625p-858 {- 69976001581096 -858 (-5.28396e-259)}
; -1.139647937243876807400511097512207925319671630859375p563 / -1.0155377936253078274830841110087931156158447265625p-858 == +oo
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
(assert (= x (fp #b1 #b11000110010 #b0010001110111111111101111001101101101010100100110110)))
(assert (= y (fp #b1 #b00010100101 #b0000001111111010010010001110101101111001000000101000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

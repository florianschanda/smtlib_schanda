(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.0390447452158186880666335127898491919040679931640625p114 {+ 175841900004737 114 (2.15801e+034)}
; Z = -1.825457453006305019727051330846734344959259033203125p-983 {- 3717529877769394 -983 (-2.23299e-296)}
; +oo x 1.0390447452158186880666335127898491919040679931640625p114 -1.825457453006305019727051330846734344959259033203125p-983 == +oo
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
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10001110001 #b0000100111111110110101100001111111001000010110000001)))
(assert (= z (fp #b1 #b00000101000 #b1101001101010001001011011111110011100110110010110010)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)

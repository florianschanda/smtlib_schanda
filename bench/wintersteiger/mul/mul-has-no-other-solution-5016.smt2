(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4854802900650099228840872456203214824199676513671875p887 {- 2186408853432499 887 (-1.53276e+267)}
; Y = -1.5071524573807508762257612033863551914691925048828125p787 {- 2284011618079981 787 (-1.22677e+237)}
; -1.4854802900650099228840872456203214824199676513671875p887 * -1.5071524573807508762257612033863551914691925048828125p787 == +oo
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
(assert (= x (fp #b1 #b11101110110 #b0111110001001000011011111011000010101110100010110011)))
(assert (= y (fp #b1 #b11100010010 #b1000000111010100101111100101001010001001010011101101)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

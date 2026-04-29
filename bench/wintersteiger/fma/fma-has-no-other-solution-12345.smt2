(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5716780909217309414316332549788057804107666015625p875 {+ 2574609237250984 875 (3.95922e+263)}
; Y = -1.8964065336549238427465979839325882494449615478515625p194 {- 4037056130940793 194 (-4.76157e+058)}
; Z = -1.90963181172715668054706839029677212238311767578125p255 {- 4096617488338772 255 (-1.1056e+077)}
; 1.5716780909217309414316332549788057804107666015625p875 x -1.8964065336549238427465979839325882494449615478515625p194 -1.90963181172715668054706839029677212238311767578125p255 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101010 #b1001001001011001011111101101000001011001001110101000)))
(assert (= y (fp #b1 #b10011000001 #b1110010101111010111001100000100111110111111101111001)))
(assert (= z (fp #b1 #b10011111110 #b1110100011011101101000010110001011000100111101010100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)

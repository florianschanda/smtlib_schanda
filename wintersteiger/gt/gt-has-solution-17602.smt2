(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.65141595900492887949440046213567256927490234375p328 {+ 2933716670237792 328 (9.03015e+098)}
; Y = 1.8448106739365000006358741302392445504665374755859375p-415 {+ 3804689036339039 -415 (2.18024e-125)}
; 1.65141595900492887949440046213567256927490234375p328 > 1.8448106739365000006358741302392445504665374755859375p-415 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000111 #b1010011011000011001100100100000000000100110001100000)))
(assert (= y (fp #b0 #b01001100000 #b1101100001000101100000110010011111011110011101011111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

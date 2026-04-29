(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2164577218942584924121774747618474066257476806640625p78 {+ 974838915664449 78 (3.67652e+023)}
; Y = 1.6986184194027698080020627457997761666774749755859375p-562 {+ 3146297653296479 -562 (1.12522e-169)}
; 1.2164577218942584924121774747618474066257476806640625p78 < 1.6986184194027698080020627457997761666774749755859375p-562 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001101 #b0011011101101001110001011111010010000000101001000001)))
(assert (= y (fp #b0 #b00111001101 #b1011001011011000101010000001111110110111110101011111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

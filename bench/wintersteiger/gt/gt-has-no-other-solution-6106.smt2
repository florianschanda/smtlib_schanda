(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.288617992791703414923176751472055912017822265625p147 {+ 1299819884789136 147 (2.29897e+044)}
; Y = -1.9556479413848231185824033673270605504512786865234375p651 {- 4303855712718071 651 (-1.82733e+196)}
; 1.288617992791703414923176751472055912017822265625p147 > -1.9556479413848231185824033673270605504512786865234375p651 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010010010 #b0100100111100010110111100110100000010011110110010000)))
(assert (= y (fp #b1 #b11010001010 #b1111010010100101010101111110111010111100110011110111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

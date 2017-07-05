(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6789803591180521014081250541494227945804595947265625p490 {+ 3057855692315945 490 (5.36715e+147)}
; Y = 1.0464304953772707307280143140815198421478271484375p670 {+ 209104361679704 670 (5.12634e+201)}
; 1.6789803591180521014081250541494227945804595947265625p490 > 1.0464304953772707307280143140815198421478271484375p670 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101001 #b1010110111010001101010000010010100001001110100101001)))
(assert (= y (fp #b0 #b11010011101 #b0000101111100010110111100111001100101110101101011000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

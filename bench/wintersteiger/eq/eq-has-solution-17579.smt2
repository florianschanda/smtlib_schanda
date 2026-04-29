(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 0.1675006273127837008729557055630721151828765869140625p-1022 {+ 754355762750177 -1023 (3.72701e-309)}
; Y = -1.5619402839580605046876371488906443119049072265625p-297 {- 2530754053437992 -297 (-6.13417e-090)}
; 0.1675006273127837008729557055630721151828765869140625p-1022 = -1.5619402839580605046876371488906443119049072265625p-297 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0010101011100001010100100011010001011110001011100001)))
(assert (= y (fp #b1 #b01011010110 #b1000111111011011010100011000010111100111101000101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.89848411443851006197292008437216281890869140625p-110 {+ 4046412722983584 -110 (1.46254e-033)}
; Y = -1.2435218894000092948459723629639483988285064697265625p-26 {- 1096725090358441 -26 (-1.85299e-008)}
; 1.89848411443851006197292008437216281890869140625p-110 > -1.2435218894000092948459723629639483988285064697265625p-26 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110010001 #b1110011000000011000011100000111101111101001010100000)))
(assert (= y (fp #b1 #b01111100101 #b0011111001010111011100110101011011010101010010101001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

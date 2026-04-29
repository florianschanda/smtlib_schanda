(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.991222199587312946533756985445506870746612548828125p-944 {+ 4464067928702786 -944 (1.33907e-284)}
; Y = -1.22776307200630885319014851120300590991973876953125p229 {- 1025753686216372 229 (-1.05921e+069)}
; 1.991222199587312946533756985445506870746612548828125p-944 < -1.22776307200630885319014851120300590991973876953125p229 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001111 #b1111110111000000101111001111001001001011111101000010)))
(assert (= y (fp #b1 #b10011100100 #b0011101001001110101011100100000110000000111010110100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.862138960637943707610020283027552068233489990234375p-769 {- 3882728701870630 -769 (-5.99716e-232)}
; Y = -1.0031565560843878071040080612874589860439300537109375p730 {- 14215864805423 730 (-5.66586e+219)}
; -1.862138960637943707610020283027552068233489990234375p-769 = -1.0031565560843878071040080612874589860439300537109375p730 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111110 #b1101110010110101001000111001000010001100001000100110)))
(assert (= y (fp #b1 #b11011011001 #b0000000011001110110111100011100100100110100000101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

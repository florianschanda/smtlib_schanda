(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1970228756984744311608892530784942209720611572265625p-404 {+ 887312149579113 -404 (2.89724e-122)}
; Y = 1.1909886287142918970261007416411302983760833740234375p-522 {+ 860136317109687 -522 (8.67461e-158)}
; 1.1970228756984744311608892530784942209720611572265625p-404 - 1.1909886287142918970261007416411302983760833740234375p-522 == 1.1970228756984742091162843280471861362457275390625p-404
; [HW: 1.1970228756984742091162843280471861362457275390625p-404] 

; mpf : + 887312149579112 -404
; mpfd: + 887312149579112 -404 (2.89724e-122) class: Pos. norm. non-zero
; hwf : + 887312149579112 -404 (2.89724e-122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001101011 #b0011001001110000000101110101011110110000010101101001)))
(assert (= y (fp #b0 #b00111110101 #b0011000011100100101000010111101000111100010110110111)))
(assert (= r (fp #b0 #b01001101011 #b0011001001110000000101110101011110110000010101101000)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)

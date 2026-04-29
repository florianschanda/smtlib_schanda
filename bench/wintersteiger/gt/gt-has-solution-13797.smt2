(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.755462790518359295077743809088133275508880615234375p697 {- 3402301941870758 697 (-1.15425e+210)}
; Y = -1.989003498723713736495710691087879240512847900390625p889 {- 4454075788320234 889 (-8.20922e+267)}
; -1.755462790518359295077743809088133275508880615234375p697 > -1.989003498723713736495710691087879240512847900390625p889 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010111000 #b1100000101100110000000100110101010011111000010100110)))
(assert (= y (fp #b1 #b11101111000 #b1111110100101111010101010101001010100101110111101010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.39946966230103786443805802264250814914703369140625p575 {- 1799051422284772 575 (-1.73066e+173)}
; Y = -1.175711351538633042679293794208206236362457275390625p990 {- 791333577314154 990 (-1.23026e+298)}
; -1.39946966230103786443805802264250814914703369140625p575 > -1.175711351538633042679293794208206236362457275390625p990 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111110 #b0110011001000011101001001100111101010011101111100100)))
(assert (= y (fp #b1 #b11111011101 #b0010110011111011011010110100110001100100111101101010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

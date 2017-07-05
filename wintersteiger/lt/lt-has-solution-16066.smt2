(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.67710922363989300976072627236135303974151611328125p707 {+ 3049428847273748 707 (1.12919e+213)}
; Y = -1.085382613220684078214617329649627208709716796875p677 {- 384529105084592 677 (-6.80597e+203)}
; 1.67710922363989300976072627236135303974151611328125p707 < -1.085382613220684078214617329649627208709716796875p677 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011000010 #b1010110101010111000001111011001101011010011100010100)))
(assert (= y (fp #b1 #b11010100100 #b0001010111011011101000101000101101101110000010110000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

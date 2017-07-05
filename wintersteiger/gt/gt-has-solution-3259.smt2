(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.43636195205505856620220583863556385040283203125p850 {+ 1965199524673824 850 (1.07835e+256)}
; Y = -1.320839804718206611511277515091933310031890869140625p73 {- 1444934024974538 73 (-1.2475e+022)}
; 1.43636195205505856620220583863556385040283203125p850 > -1.320839804718206611511277515091933310031890869140625p73 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101010001 #b0110111110110101011010101011100101001011100100100000)))
(assert (= y (fp #b1 #b10001001000 #b0101001000100010100011101011010010000101000011001010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

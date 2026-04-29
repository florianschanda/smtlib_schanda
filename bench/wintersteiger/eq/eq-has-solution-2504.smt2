(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.866951563909339473212867233087308704853057861328125p-818 {+ 3904402740170370 -818 (1.06806e-246)}
; Y = 1.152450181212390845075788092799484729766845703125p707 {+ 686574579300688 707 (7.75942e+212)}
; 1.866951563909339473212867233087308704853057861328125p-818 = 1.152450181212390845075788092799484729766845703125p707 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011001101 #b1101110111110000100010011010011000110100111010000010)))
(assert (= y (fp #b0 #b11011000010 #b0010011100000110111110011001111010010011100101010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.972819501617325332887276090332306921482086181640625p355 {- 4381189544982538 355 (-1.44789e+107)}
; Y = 1.4216006209560896333954360670759342610836029052734375p-890 {+ 1898720399437015 -890 (1.72219e-268)}
; -1.972819501617325332887276090332306921482086181640625p355 < 1.4216006209560896333954360670759342610836029052734375p-890 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101100010 #b1111100100001010101100101110100001011011100000001010)))
(assert (= y (fp #b0 #b00010000101 #b0110101111101110000001001010111011111010110011010111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

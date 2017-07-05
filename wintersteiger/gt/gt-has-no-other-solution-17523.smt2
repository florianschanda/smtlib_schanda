(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6305592846057894718114766874350607395172119140625p810 {+ 2839786559185640 810 (1.11335e+244)}
; Y = -1.25000018972745952083869269699789583683013916015625p695 {- 1125900761299140 695 (-2.05474e+209)}
; 1.6305592846057894718114766874350607395172119140625p810 > -1.25000018972745952083869269699789583683013916015625p695 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101001 #b1010000101101100010101010101000110010010001011101000)))
(assert (= y (fp #b1 #b11010110110 #b0100000000000000000000110010111011011111100011000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

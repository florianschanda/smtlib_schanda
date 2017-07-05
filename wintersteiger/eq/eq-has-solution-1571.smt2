(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.446399633199177525710865666042082011699676513671875p720 {- 2010405221734142 720 (-7.97784e+216)}
; Y = -1.47909728628118930515711326734162867069244384765625p888 {- 2157662359970180 888 (-3.05234e+267)}
; -1.446399633199177525710865666042082011699676513671875p720 = -1.47909728628118930515711326734162867069244384765625p888 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001111 #b0111001001000111001111110001000110001001011011111110)))
(assert (= y (fp #b1 #b11101110111 #b0111101010100110000111101010100000101110000110000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

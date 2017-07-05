(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5781737180538117915062912288703955709934234619140625p886 {+ 2603862941182561 886 (8.142e+266)}
; Y = 1.5316661594419629377483715870766900479793548583984375p-917 {+ 2394411517548327 -917 (1.38248e-276)}
; 1.5781737180538117915062912288703955709934234619140625p886 = 1.5316661594419629377483715870766900479793548583984375p-917 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101110101 #b1001010000000011001100010101101001110010101001100001)))
(assert (= y (fp #b0 #b00001101010 #b1000100000011011010001011111111100110001011100100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

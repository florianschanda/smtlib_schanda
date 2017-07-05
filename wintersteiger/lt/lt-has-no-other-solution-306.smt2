(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9047242666766790453181101838708855211734771728515625p939 {- 4074515870278137 939 (-8.85112e+282)}
; Y = 1.877831620318828331761551453382708132266998291015625p795 {+ 3953402158161914 795 (3.91294e+239)}
; -1.9047242666766790453181101838708855211734771728515625p939 < 1.877831620318828331761551453382708132266998291015625p795 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110101010 #b1110011110011100000000100111000101000110000111111001)))
(assert (= y (fp #b0 #b11100011010 #b1110000010111001100100101011010010101001111111111010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

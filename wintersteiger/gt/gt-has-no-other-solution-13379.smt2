(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2503028217937639521295523081789724528789520263671875p998 {- 1127263694960179 998 (-3.34928e+300)}
; Y = 1.8729115028741547543944534481852315366268157958984375p577 {+ 3931243919071463 577 (9.26456e+173)}
; -1.2503028217937639521295523081789724528789520263671875p998 > 1.8729115028741547543944534481852315366268157958984375p577 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111100101 #b0100000000010011110110001000000110110011011000110011)))
(assert (= y (fp #b0 #b11001000000 #b1101111101110111001000001101010100100101100011100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

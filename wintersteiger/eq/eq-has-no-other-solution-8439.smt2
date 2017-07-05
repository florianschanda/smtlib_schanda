(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1559508619149523322988670770428143441677093505859375p-389 {+ 702340243608287 -389 (9.16793e-118)}
; Y = 1.002031191866169734794311807490885257720947265625p908 {+ 9147674931600 908 (2.16829e+273)}
; 1.1559508619149523322988670770428143441677093505859375p-389 = 1.002031191866169734794311807490885257720947265625p908 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111010 #b0010011111101100011001010100101110110101001011011111)))
(assert (= y (fp #b0 #b11110001011 #b0000000010000101000111011011111010100011000110010000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

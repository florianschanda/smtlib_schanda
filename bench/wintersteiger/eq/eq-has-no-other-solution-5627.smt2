(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8163365290178370425877574234618805348873138427734375p-1020 {- 3676452887893655 -1020 (-1.61659e-307)}
; Y = 1.2394488086353678824025337235070765018463134765625p216 {+ 1078381565344552 216 (1.30529e+065)}
; -1.8163365290178370425877574234618805348873138427734375p-1020 = 1.2394488086353678824025337235070765018463134765625p216 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000011 #b1101000011111011011011100100011010101001011010010111)))
(assert (= y (fp #b0 #b10011010111 #b0011110101001100100001000110001000100111101100101000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

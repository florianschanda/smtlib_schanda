(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.92997994986697651853546631173230707645416259765625p-310 {+ 4188257355682948 -310 (9.25239e-094)}
; Y = -1.188907159395064194740143648232333362102508544921875p482 {- 850762212659230 482 (-1.48459e+145)}
; 1.92997994986697651853546631173230707645416259765625p-310 > -1.188907159395064194740143648232333362102508544921875p482 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001001 #b1110111000010011001010100111111010011101010010000100)))
(assert (= y (fp #b1 #b10111100001 #b0011000001011100001110000011011110010101000000011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

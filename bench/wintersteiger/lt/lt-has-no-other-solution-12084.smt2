(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1724222112231130754622654421837069094181060791015625p82 {- 776520606214809 82 (-5.66949e+024)}
; Y = 1.0446414618210422275978999095968902111053466796875p463 {+ 201047270822520 463 (2.48803e+139)}
; -1.1724222112231130754622654421837069094181060791015625p82 < 1.0446414618210422275978999095968902111053466796875p463 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001010001 #b0010110000100011110111001010111001001110101010011001)))
(assert (= y (fp #b0 #b10111001110 #b0000101101101101100111110111001010010001001001111000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

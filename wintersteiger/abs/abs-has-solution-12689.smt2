(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.65380431906589020485398577875457704067230224609375p-667 {- 2944472887718364 -667 (-2.7007e-201)}
; -1.65380431906589020485398577875457704067230224609375p-667 | == 1.65380431906589020485398577875457704067230224609375p-667
; [HW: 1.65380431906589020485398577875457704067230224609375p-667] 

; mpf : + 2944472887718364 -667
; mpfd: + 2944472887718364 -667 (2.7007e-201) class: Pos. norm. non-zero
; hwf : + 2944472887718364 -667 (2.7007e-201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101100100 #b1010011101011111101110000100100001011111000111011100)))
(assert (= r (fp #b0 #b00101100100 #b1010011101011111101110000100100001011111000111011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

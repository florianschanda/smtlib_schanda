(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3125219778746191057194891982362605631351470947265625p-444 {+ 1407473863101225 -444 (2.88927e-134)}
; Y = 1.81671169758110639946835362934507429599761962890625p430 {+ 3678142496895396 430 (5.03714e+129)}
; 1.3125219778746191057194891982362605631351470947265625p-444 m 1.81671169758110639946835362934507429599761962890625p430 == 1.3125219778746191057194891982362605631351470947265625p-444
; [HW: 1.3125219778746191057194891982362605631351470947265625p-444] 

; mpf : + 1407473863101225 -444
; mpfd: + 1407473863101225 -444 (2.88927e-134) class: Pos. norm. non-zero
; hwf : + 1407473863101225 -444 (2.88927e-134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000011 #b0101000000000001011100001011101001000000101100101001)))
(assert (= y (fp #b0 #b10110101101 #b1101000100010100000001001000111101011111000110100100)))
(assert (= r (fp #b0 #b01001000011 #b0101000000000001011100001011101001000000101100101001)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

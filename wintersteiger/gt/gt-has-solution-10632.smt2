(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1733930549779987284608750996994785964488983154296875p-945 {+ 780892897787547 -945 (3.94546e-285)}
; Y = -1.045788248345229209945728143793530762195587158203125p214 {- 206211938185522 214 (-2.75336e+064)}
; 1.1733930549779987284608750996994785964488983154296875p-945 > -1.045788248345229209945728143793530762195587158203125p214 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001110 #b0010110001100011011111001011110001111011111010011011)))
(assert (= y (fp #b1 #b10011010101 #b0000101110111000110001110101010100101111000100110010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

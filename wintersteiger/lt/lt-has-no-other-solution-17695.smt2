(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.226708578158340667840775495278649032115936279296875p263 {- 1021004668115598 263 (-1.81815e+079)}
; Y = 1.70366553074418813906731884344480931758880615234375p-554 {+ 3169027822052988 -554 (2.88913e-167)}
; -1.226708578158340667840775495278649032115936279296875p263 < 1.70366553074418813906731884344480931758880615234375p-554 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100000110 #b0011101000001001100100101100100011101001101010001110)))
(assert (= y (fp #b0 #b00111010101 #b1011010000100011011011001001100111011110011001111100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

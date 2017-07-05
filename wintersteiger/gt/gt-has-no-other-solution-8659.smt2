(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0909873182481122366738190976320765912532806396484375p-649 {- 409770452557639 -649 (-4.67038e-196)}
; Y = -1.6136112308963930228600247573922388255596160888671875p626 {- 2763459310815347 626 (-4.49341e+188)}
; -1.0909873182481122366738190976320765912532806396484375p-649 > -1.6136112308963930228600247573922388255596160888671875p626 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101110110 #b0001011101001010111100011110010000111001111101000111)))
(assert (= y (fp #b1 #b11001110001 #b1001110100010101101000000010100100101000100001110011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

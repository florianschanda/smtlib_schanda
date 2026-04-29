(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.07265305038212233057492994703352451324462890625p929 {+ 327200250628256 929 (4.86772e+279)}
; Y = -1.91416357551660443192531602107919752597808837890625p54 {- 4117026738052260 54 (-3.44825e+016)}
; 1.07265305038212233057492994703352451324462890625p929 < -1.91416357551660443192531602107919752597808837890625p54 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110100000 #b0001001010011001011000111110101101011000100010100000)))
(assert (= y (fp #b1 #b10000110101 #b1110101000000110100111111100010000001001110010100100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

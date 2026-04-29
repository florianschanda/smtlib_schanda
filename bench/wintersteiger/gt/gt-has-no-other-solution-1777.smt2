(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0609925292077579950245080908644013106822967529296875p143 {- 274685931812443 143 (-1.18305e+043)}
; Y = -1.3200007190762905739944699234911240637302398681640625p942 {- 1441155119190273 942 (-4.90716e+283)}
; -1.0609925292077579950245080908644013106822967529296875p143 > -1.3200007190762905739944699234911240637302398681640625p942 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001110 #b0000111110011101001101001101011000111111011001011011)))
(assert (= y (fp #b1 #b11110101101 #b0101000111101011100100010010111100100001000100000001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

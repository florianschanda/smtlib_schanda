(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.105723500790995128539861980243586003780364990234375p-633 {- 476136318766630 -633 (-3.10212e-191)}
; Y = -1.554877511393523814575701180729083716869354248046875p-17 {- 2498946153548142 -17 (-1.18628e-005)}
; -1.105723500790995128539861980243586003780364990234375p-633 < -1.554877511393523814575701180729083716869354248046875p-17 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110000110 #b0001101100010000101100100000001001010000111000100110)))
(assert (= y (fp #b1 #b01111101110 #b1000111000001100011100111101110010111000100101101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

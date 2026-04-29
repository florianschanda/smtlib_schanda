(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4545335821888036864635296296910382807254791259765625p-719 {- 2047037271372873 -719 (-5.2742e-217)}
; Y = -1.6566201825837032490795763806090690195560455322265625p-729 {- 2957154409607913 -729 (-5.86619e-220)}
; -1.4545335821888036864635296296910382807254791259765625p-719 = -1.6566201825837032490795763806090690195560455322265625p-729 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110000 #b0111010001011100010100000001011001101111010001001001)))
(assert (= y (fp #b1 #b00100100110 #b1010100000011000010000101010001000010111001011101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.4465337560000219863098891437402926385402679443359375p-99 {+ 2011009257130047 -99 (2.28223e-030)}
; -zero < 1.4465337560000219863098891437402926385402679443359375p-99 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01110011100 #b0111001001010000000010010100011010010100100000111111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.114319320443317717916897890972904860973358154296875p-652 {- 514848448949774 -652 (-5.96283e-197)}
; Y = -1.6881525218651118880330841420800425112247467041015625p153 {- 3099163441045785 153 (-1.92753e+046)}
; -1.114319320443317717916897890972904860973358154296875p-652 = -1.6881525218651118880330841420800425112247467041015625p153 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101110011 #b0001110101000100000001111110111010011010111000001110)))
(assert (= y (fp #b1 #b10010011000 #b1011000000101010110000111000000000010010000100011001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

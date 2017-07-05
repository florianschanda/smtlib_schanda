(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7466943374909458253085858814301900565624237060546875p-194 {- 3362812340083883 -194 (-6.95661e-059)}
; Y = -1.410041880734817620890453326865099370479583740234375p678 {- 1846664461283622 678 (-1.76835e+204)}
; -1.7466943374909458253085858814301900565624237060546875p-194 > -1.410041880734817620890453326865099370479583740234375p678 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111101 #b1011111100100111010111000010111110100001110010101011)))
(assert (= y (fp #b1 #b11010100101 #b0110100011111000100000010011001110111111000100100110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

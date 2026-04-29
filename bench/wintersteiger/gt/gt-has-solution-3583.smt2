(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7202913780484625494437977977213449776172637939453125p644 {+ 3243903981777237 644 (1.2558e+194)}
; Y = 1.295314751003683539920530165545642375946044921875p808 {+ 1329979402577200 808 (2.21112e+243)}
; 1.7202913780484625494437977977213449776172637939453125p644 > 1.295314751003683539920530165545642375946044921875p808 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000011 #b1011100001100101000001000000100001001111000101010101)))
(assert (= y (fp #b0 #b11100100111 #b0100101110011001101111110101110110010110010100110000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

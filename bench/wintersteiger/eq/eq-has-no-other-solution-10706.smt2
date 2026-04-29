(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.11514903529483522248710869462229311466217041015625p721 {- 518585152445892 721 (-1.23015e+217)}
; Y = 1.36545263501071900691385963000357151031494140625p685 {+ 1645852350855840 685 (2.19191e+206)}
; -1.11514903529483522248710869462229311466217041015625p721 = 1.36545263501071900691385963000357151031494140625p685 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010000 #b0001110101111010011010000011110011000001110111000100)))
(assert (= y (fp #b0 #b11010101100 #b0101110110001110010011011100101110011011101010100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

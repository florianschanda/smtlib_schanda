(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.506310519822039228898802321054972708225250244140625p661 {+ 2280219868404298 661 (1.44126e+199)}
; Y = -1.3182531566725488314517633625655435025691986083984375p236 {- 1433284797799975 236 (-1.45572e+071)}
; 1.506310519822039228898802321054972708225250244140625p661 > -1.3182531566725488314517633625655435025691986083984375p236 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010100 #b1000000110011101100100001111010001000001101001001010)))
(assert (= y (fp #b1 #b10011101011 #b0101000101111001000010011111001111000001111000100111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.07549531929550834519204727257601916790008544921875p-305 {- 340000691847468 -305 (-1.64991e-092)}
; Y = 1.745623464902331445358640849008224904537200927734375p-433 {+ 3357989558692838 -433 (7.86978e-131)}
; -1.07549531929550834519204727257601916790008544921875p-305 > 1.745623464902331445358640849008224904537200927734375p-433 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011001110 #b0001001101010011101010010100011101100000000100101100)))
(assert (= y (fp #b0 #b01001001110 #b1011111011100001001011011110110011100010101111100110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

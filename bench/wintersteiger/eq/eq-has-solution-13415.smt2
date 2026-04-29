(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2193958484677065445822563560795970261096954345703125p591 {- 988071061405797 591 (-9.88262e+177)}
; Y = -1.3948091474758985697235402767546474933624267578125p462 {- 1778062329454920 462 (-1.66101e+139)}
; -1.2193958484677065445822563560795970261096954345703125p591 = -1.3948091474758985697235402767546474933624267578125p462 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001110 #b0011100000101010010100111000101000001100000001100101)))
(assert (= y (fp #b1 #b10111001101 #b0110010100010010001101100101100010010010000101001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

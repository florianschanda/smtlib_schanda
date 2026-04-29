(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8526038237265518571206257547601126134395599365234375p53 {- 3839786262829559 53 (-1.66868e+016)}
; Y = 1.0858057899818367442179578574723564088344573974609375p741 {+ 386434923788431 741 (1.25597e+223)}
; -1.8526038237265518571206257547601126134395599365234375p53 < 1.0858057899818367442179578574723564088344573974609375p741 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000110100 #b1101101001000100001111101000001101011001100111110111)))
(assert (= y (fp #b0 #b11011100100 #b0001010111110111010111100100010111000111100010001111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

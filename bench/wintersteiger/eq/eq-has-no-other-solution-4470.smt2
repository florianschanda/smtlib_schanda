(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.90833856089759468233069128473289310932159423828125p-345 {- 4090793204384660 -345 (-2.66261e-104)}
; Y = 1.242814530665364625150459687574766576290130615234375p-666 {+ 1093539429824678 -666 (4.05909e-201)}
; -1.90833856089759468233069128473289310932159423828125p-345 = 1.242814530665364625150459687574766576290130615234375p-666 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100110 #b1110100010001000111000000011110011000000001110010100)))
(assert (= y (fp #b0 #b00101100101 #b0011111000101001000101111101010000110011100010100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

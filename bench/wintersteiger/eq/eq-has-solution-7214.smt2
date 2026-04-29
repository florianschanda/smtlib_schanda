(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0925874392875167817607007236802019178867340087890625p-214 {+ 416976757074449 -214 (4.1499e-065)}
; Y = 1.3189528910145955631350034309434704482555389404296875p-246 {+ 1436436121122075 -246 (1.16641e-074)}
; 1.0925874392875167817607007236802019178867340087890625p-214 = 1.3189528910145955631350034309434704482555389404296875p-246 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100101001 #b0001011110110011110011110111011111000010101000010001)))
(assert (= y (fp #b0 #b01100001001 #b0101000110100110111001011000101111011111010100011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

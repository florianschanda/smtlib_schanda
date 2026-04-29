(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9388566959033919356869546390953473746776580810546875p955 {- 4228234665824811 955 (-5.90461e+287)}
; Y = 1.76695821466867908355879990267567336559295654296875p945 {+ 3454072729790604 945 (5.25499e+284)}
; -1.9388566959033919356869546390953473746776580810546875p955 = 1.76695821466867908355879990267567336559295654296875p945 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110111010 #b1111000001011000111010011001010010001001001000101011)))
(assert (= y (fp #b0 #b11110110000 #b1100010001010111010111111010000101100110100010001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

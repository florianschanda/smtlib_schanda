(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.10678378979522573644089789013378322124481201171875p-669 {- 480911435930988 -669 (-4.51851e-202)}
; Y = 1.2819550317871100109101689668023027479648590087890625p-843 {+ 1269812576091665 -843 (2.18568e-254)}
; -1.10678378979522573644089789013378322124481201171875p-669 = 1.2819550317871100109101689668023027479648590087890625p-843 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100010 #b0001101101010110001011101011010011101001110101101100)))
(assert (= y (fp #b0 #b00010110100 #b0100100000101110001101000111100001110111111000010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

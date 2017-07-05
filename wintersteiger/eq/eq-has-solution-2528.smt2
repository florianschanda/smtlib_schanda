(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1813627704100382320717699258239008486270904541015625p978 {- 816785305237529 978 (-3.018e+294)}
; Y = -1.391758152323939068395475260331295430660247802734375p838 {- 1764321868825446 838 (-2.55094e+252)}
; -1.1813627704100382320717699258239008486270904541015625p978 = -1.391758152323939068395475260331295430660247802734375p838 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010001 #b0010111001101101110010100101111110011111100000011001)))
(assert (= y (fp #b1 #b11101000101 #b0110010001001010010000110010010000101100001101100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

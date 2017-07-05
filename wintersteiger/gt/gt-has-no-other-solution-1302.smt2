(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5222359610807532082077386803575791418552398681640625p-758 {+ 2351941679722753 -758 (1.00403e-228)}
; Y = -1.672737605785481918019286240451037883758544921875p131 {- 3029740830733616 131 (-4.55362e+039)}
; 1.5222359610807532082077386803575791418552398681640625p-758 > -1.672737605785481918019286240451037883758544921875p131 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100001001 #b1000010110110001010000011000010110100011000100000001)))
(assert (= y (fp #b1 #b10010000010 #b1010110000111000100010000001111110100011010100110000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

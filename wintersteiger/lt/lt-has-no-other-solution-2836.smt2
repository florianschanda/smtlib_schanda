(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8241622277073192837093529306002892553806304931640625p-1010 {- 3711696701595521 -1010 (-1.66252e-304)}
; Y = 1.493351715667515566821066386182792484760284423828125p-333 {+ 2221858602842818 -333 (8.53441e-101)}
; -1.8241622277073192837093529306002892553806304931640625p-1010 < 1.493351715667515566821066386182792484760284423828125p-333 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000001101 #b1101001011111100010010111011011010011001111110000001)))
(assert (= y (fp #b0 #b01010110010 #b0111111001001100010011000100110000110111101011000010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

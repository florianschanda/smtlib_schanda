(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.709158268094308485984811341040767729282379150390625p-862 {- 3193764911936234 -862 (-5.5581e-260)}
; Y = -1.06452953831236651893732414464466273784637451171875p962 {- 290615204697964 962 (-4.14967e+289)}
; -1.709158268094308485984811341040767729282379150390625p-862 > -1.06452953831236651893732414464466273784637451171875p962 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100001 #b1011010110001011011001010111000100100111001011101010)))
(assert (= y (fp #b1 #b11111000001 #b0001000010000101000000100000000010101101011101101100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

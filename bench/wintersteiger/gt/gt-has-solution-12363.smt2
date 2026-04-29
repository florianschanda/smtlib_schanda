(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.16012107842233636034734445274807512760162353515625p109 {+ 721121229116996 109 (7.52962e+032)}
; Y = -1.1605318817491963034882473948528058826923370361328125p-465 {- 722971322826765 -465 (-1.21817e-140)}
; 1.16012107842233636034734445274807512760162353515625p109 > -1.1605318817491963034882473948528058826923370361328125p-465 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001101100 #b0010100011111101101100011110101100111001011001000100)))
(assert (= y (fp #b1 #b01000101110 #b0010100100011000100111100000111000010100000000001101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

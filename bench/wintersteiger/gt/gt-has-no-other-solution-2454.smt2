(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4316521894379643509154220737400464713573455810546875p685 {- 1943988639506475 685 (-2.29818e+206)}
; Y = 1.6192754692113682235543592469184659421443939208984375p666 {+ 2788968772380007 666 (4.9579e+200)}
; -1.4316521894379643509154220737400464713573455810546875p685 > 1.6192754692113682235543592469184659421443939208984375p666 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010101100 #b0110111010000000110000100000010011100010000000101011)))
(assert (= y (fp #b0 #b11010011001 #b1001111010001000110101100100111101111010010101100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

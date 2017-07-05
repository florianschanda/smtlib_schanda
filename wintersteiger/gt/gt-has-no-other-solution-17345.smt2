(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5626223834376535837265009831753559410572052001953125p744 {+ 2533825956400117 744 (1.44601e+224)}
; Y = -1.5569824738127480134863844796200282871723175048828125p-126 {- 2508426061514989 -126 (-1.83022e-038)}
; 1.5626223834376535837265009831753559410572052001953125p744 > -1.5569824738127480134863844796200282871723175048828125p-126 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100111 #b1001000000001000000001010100000011011100101111110101)))
(assert (= y (fp #b1 #b01110000001 #b1000111010010110011001110100010101111000100011101101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

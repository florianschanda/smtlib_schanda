(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9806891391381882261413238666136749088764190673828125p-410 {- 4416631241589037 -410 (-7.49063e-124)}
; Y = 1.4291194668014737256811486076912842690944671630859375p817 {+ 1932582270784543 817 (1.24904e+246)}
; -1.9806891391381882261413238666136749088764190673828125p-410 > 1.4291194668014737256811486076912842690944671630859375p817 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100101 #b1111101100001110011100011000010000100100000100101101)))
(assert (= y (fp #b0 #b11100110000 #b0110110111011010110001011111101111111101010000011111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

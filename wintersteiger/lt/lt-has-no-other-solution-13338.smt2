(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2249780093692443916353340682690031826496124267578125p767 {- 1013210879161885 767 (-9.509e+230)}
; Y = 1.846088054715135928773861451190896332263946533203125p-1021 {+ 3810441847937714 -1021 (8.21536e-308)}
; -1.2249780093692443916353340682690031826496124267578125p767 < 1.846088054715135928773861451190896332263946533203125p-1021 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011111110 #b0011100110011000001010001010100010001111011000011101)))
(assert (= y (fp #b0 #b00000000010 #b1101100010011001001110100000110010001001101010110010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

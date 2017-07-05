(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1049005666951587922852695555775426328182220458984375p-182 {- 472430153079271 -182 (-1.80245e-055)}
; Y = -0.12706391833100827426505929906852543354034423828125p-1022 {- 572245015247764 -1023 (-2.82727e-309)}
; -1.1049005666951587922852695555775426328182220458984375p-182 > -0.12706391833100827426505929906852543354034423828125p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101001001 #b0001101011011010110000110111011101001001100111100111)))
(assert (= y (fp #b1 #b00000000000 #b0010000010000111010000101100110110111011101110010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0050719142131094852032902053906582295894622802734375p-504 {- 22841870960215 -504 (-1.91902e-152)}
; Y = -1.120300494633151178192065344774164259433746337890625p-925 {- 541785262802346 -925 (-3.94992e-279)}
; -1.0050719142131094852032902053906582295894622802734375p-504 > -1.120300494633151178192065344774164259433746337890625p-925 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000111 #b0000000101001100011001001001100110101100011001010111)))
(assert (= y (fp #b1 #b00001100010 #b0001111011001100000000110110001000100100010110101010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

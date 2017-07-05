(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.05267462381296894591287127695977687835693359375p-996 {- 237225416175968 -996 (-1.57188e-300)}
; Y = -1.0574188518879108489301188456011004745960235595703125p-365 {- 258591519966437 -365 (-1.40701e-110)}
; -1.05267462381296894591287127695977687835693359375p-996 < -1.0574188518879108489301188456011004745960235595703125p-365 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011011 #b0000110101111100000101011000101010011011000101100000)))
(assert (= y (fp #b1 #b01010010010 #b0000111010110011000000000111101100001000010011100101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

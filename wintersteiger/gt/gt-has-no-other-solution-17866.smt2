(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.39950999584672519659989120555110275745391845703125p-307 {+ 1799233068426100 -307 (5.36744e-093)}
; Y = 1.5985370241279535097334019155823625624179840087890625p-772 {+ 2695571118830097 -772 (6.43526e-233)}
; 1.39950999584672519659989120555110275745391845703125p-307 > 1.5985370241279535097334019155823625624179840087890625p-772 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001100 #b0110011001000110010010010111111010010110001101110100)))
(assert (= y (fp #b0 #b00011111011 #b1001100100111001101110001111000000010011001000010001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

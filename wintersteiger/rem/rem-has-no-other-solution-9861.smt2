(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9790357220449747988055833047837950289249420166015625p454 {- 4409184912984153 454 (-9.20601e+136)}
; Y = -1.8455203977107628166010044878930784761905670166015625p-1000 {- 3807885348064345 -1000 (-1.72236e-301)}
; -1.9790357220449747988055833047837950289249420166015625p454 % -1.8455203977107628166010044878930784761905670166015625p-1000 == -1.2598531488330146910215034949942491948604583740234375p-1000
; [HW: -1.2598531488330146910215034949942491948604583740234375p-1000] 

; mpf : - 1170274544255415 -1000
; mpfd: - 1170274544255415 -1000 (-1.17578e-301) class: Neg. norm. non-zero
; hwf : - 1170274544255415 -1000 (-1.17578e-301) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000101 #b1111101010100010000101011100011111001100100001011001)))
(assert (= y (fp #b1 #b00000010111 #b1101100001110100000001100101100001000100110001011001)))
(assert (= r (fp #b0 #b00000010110 #x2bdc93e089544)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

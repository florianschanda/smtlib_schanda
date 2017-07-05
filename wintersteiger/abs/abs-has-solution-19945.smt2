(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3464959840220631637208725805976428091526031494140625p-730 {+ 1560479184527137 -730 (2.38401e-220)}
; 1.3464959840220631637208725805976428091526031494140625p-730 | == 1.3464959840220631637208725805976428091526031494140625p-730
; [HW: 1.3464959840220631637208725805976428091526031494140625p-730] 

; mpf : + 1560479184527137 -730
; mpfd: + 1560479184527137 -730 (2.38401e-220) class: Pos. norm. non-zero
; hwf : + 1560479184527137 -730 (2.38401e-220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100101 #b0101100010110011111101011111011110010001111100100001)))
(assert (= r (fp #b0 #b00100100101 #b0101100010110011111101011111011110010001111100100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

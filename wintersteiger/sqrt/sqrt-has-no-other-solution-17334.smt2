(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.525160988595035238546415712335146963596343994140625p-183 {+ 2365114832546122 -183 (1.24402e-055)}
; 1.525160988595035238546415712335146963596343994140625p-183 S == 1.7465170990259644145936590575729496777057647705078125p-92
; [HW: 1.7465170990259644145936590575729496777057647705078125p-92] 

; mpf : + 3362014128999037 -92
; mpfd: + 3362014128999037 -92 (3.52706e-028) class: Pos. norm. non-zero
; hwf : + 3362014128999037 -92 (3.52706e-028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101001000 #b1000011001110000111100110101011100100110100101001010)))
(assert (= r (fp #b0 #b01110100011 #b1011111100011011101111101001111000111000101001111101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

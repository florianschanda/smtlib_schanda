(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6466827456309911514864552373182959854602813720703125p-153 {+ 2912400172250661 -153 (1.44218e-046)}
; 1.6466827456309911514864552373182959854602813720703125p-153 | == 1.6466827456309911514864552373182959854602813720703125p-153
; [HW: 1.6466827456309911514864552373182959854602813720703125p-153] 

; mpf : + 2912400172250661 -153
; mpfd: + 2912400172250661 -153 (1.44218e-046) class: Pos. norm. non-zero
; hwf : + 2912400172250661 -153 (1.44218e-046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101100110 #b1010010110001101000000000001101101011111011000100101)))
(assert (= r (fp #b0 #b01101100110 #b1010010110001101000000000001101101011111011000100101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

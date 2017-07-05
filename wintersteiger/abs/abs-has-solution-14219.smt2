(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.36413277006736510799100869917310774326324462890625p-184 {+ 1639908207588772 -184 (5.56336e-056)}
; 1.36413277006736510799100869917310774326324462890625p-184 | == 1.36413277006736510799100869917310774326324462890625p-184
; [HW: 1.36413277006736510799100869917310774326324462890625p-184] 

; mpf : + 1639908207588772 -184
; mpfd: + 1639908207588772 -184 (5.56336e-056) class: Pos. norm. non-zero
; hwf : + 1639908207588772 -184 (5.56336e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101000111 #b0101110100110111110011100010001011010111010110100100)))
(assert (= r (fp #b0 #b01101000111 #b0101110100110111110011100010001011010111010110100100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

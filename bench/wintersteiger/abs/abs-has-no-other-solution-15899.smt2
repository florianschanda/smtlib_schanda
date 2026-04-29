(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3431101264229414748996305206674151122570037841796875p548 {+ 1545230637505403 548 (1.23751e+165)}
; 1.3431101264229414748996305206674151122570037841796875p548 | == 1.3431101264229414748996305206674151122570037841796875p548
; [HW: 1.3431101264229414748996305206674151122570037841796875p548] 

; mpf : + 1545230637505403 548
; mpfd: + 1545230637505403 548 (1.23751e+165) class: Pos. norm. non-zero
; hwf : + 1545230637505403 548 (1.23751e+165) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100011 #b0101011111010110000100001011001111101001101101111011)))
(assert (= r (fp #b0 #b11000100011 #b0101011111010110000100001011001111101001101101111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

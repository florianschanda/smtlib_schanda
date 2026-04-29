(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0974883297899789003082560157054103910923004150390625p-726 {- 439048405715121 -726 (-3.10902e-219)}
; -1.0974883297899789003082560157054103910923004150390625p-726 | == 1.0974883297899789003082560157054103910923004150390625p-726
; [HW: 1.0974883297899789003082560157054103910923004150390625p-726] 

; mpf : + 439048405715121 -726
; mpfd: + 439048405715121 -726 (3.10902e-219) class: Pos. norm. non-zero
; hwf : + 439048405715121 -726 (3.10902e-219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100101001 #b0001100011110100111111101100010000110000100010110001)))
(assert (= r (fp #b0 #b00100101001 #b0001100011110100111111101100010000110000100010110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

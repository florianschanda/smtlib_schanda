(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4323747388609138209147886300343088805675506591796875p-873 {+ 1947242712818427 -873 (2.27442e-263)}
; 1.4323747388609138209147886300343088805675506591796875p-873 S == 1.692557082559352554795850664959289133548736572265625p-437
; [HW: 1.692557082559352554795850664959289133548736572265625p-437] 

; mpf : + 3118999818947098 -437
; mpfd: + 3118999818947098 -437 (4.76909e-132) class: Pos. norm. non-zero
; hwf : + 3118999818947098 -437 (4.76909e-132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010110 #b0110111010110000000111000110001100000110001011111011)))
(assert (= r (fp #b0 #b01001001010 #b1011000101001011011010111100010000110100101000011010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

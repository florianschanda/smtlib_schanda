(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.565577734588377012414639466442167758941650390625p-1019 {+ 2547135674741264 -1019 (2.78682e-307)}
; 1.565577734588377012414639466442167758941650390625p-1019 S == 1.769507126059896240377611320582218468189239501953125p-510
; [HW: 1.769507126059896240377611320582218468189239501953125p-510] 

; mpf : + 3465552006182290 -510
; mpfd: + 3465552006182290 -510 (5.27903e-154) class: Pos. norm. non-zero
; hwf : + 3465552006182290 -510 (5.27903e-154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000100 #b1001000011001001101100111101000101100111001000010000)))
(assert (= r (fp #b0 #b01000000001 #b1100010011111110011010110100010001110111010110010010)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

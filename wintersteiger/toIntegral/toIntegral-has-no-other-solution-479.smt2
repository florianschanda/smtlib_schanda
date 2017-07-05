(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.98488812496637923032949402113445103168487548828125 689 {+ 4435541792600212 689 (5.09804e+207)}
; 1.98488812496637923032949402113445103168487548828125 689 I == 1.98488812496637923032949402113445103168487548828125 689
; [HW: 1.98488812496637923032949402113445103168487548828125 689] 

; mpf : + 4435541792600212 689
; mpfd: + 4435541792600212 689 (5.09804e+207) class: Pos. norm. non-zero
; hwf : + 4435541792600212 689 (5.09804e+207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110000 #b1111110000100001101000001100111011110011000010010100)))
(assert (= r (fp #b0 #b11010110000 #b1111110000100001101000001100111011110011000010010100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)

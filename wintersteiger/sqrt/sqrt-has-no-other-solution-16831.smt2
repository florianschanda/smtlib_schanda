(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6725482498945034581794288897071965038776397705078125p-411 {+ 3028888047613565 -411 (3.16264e-124)}
; 1.6725482498945034581794288897071965038776397705078125p-411 S == 1.8289604970553645646447193939820863306522369384765625p-206
; [HW: 1.8289604970553645646447193939820863306522369384765625p-206] 

; mpf : + 3733306185643401 -206
; mpfd: + 3733306185643401 -206 (1.77838e-062) class: Pos. norm. non-zero
; hwf : + 3733306185643401 -206 (1.77838e-062) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100100 #b1010110000101100000111110100001001000111011001111101)))
(assert (= r (fp #b0 #b01100110001 #b1101010000110110110000010101000010000111010110001001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

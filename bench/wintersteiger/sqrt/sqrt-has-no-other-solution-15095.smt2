(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.13084682865533014961556546040810644626617431640625p-306 {+ 589281728774756 -306 (8.67411e-093)}
; 1.13084682865533014961556546040810644626617431640625p-306 S == 1.063412821370576910595673325587995350360870361328125p-153
; [HW: 1.063412821370576910595673325587995350360870361328125p-153] 

; mpf : + 285585958695042 -153
; mpfd: + 285585958695042 -153 (9.31349e-047) class: Pos. norm. non-zero
; hwf : + 285585958695042 -153 (9.31349e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001101 #b0010000101111111001011011000000111011100001001100100)))
(assert (= r (fp #b0 #b01101100110 #b0001000000111011110100101001100111101111000010000010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

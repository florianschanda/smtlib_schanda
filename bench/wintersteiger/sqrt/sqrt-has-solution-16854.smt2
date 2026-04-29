(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.606004947501225021966320127830840647220611572265625p-144 {+ 2729203655751194 -144 (7.20158e-044)}
; 1.606004947501225021966320127830840647220611572265625p-144 S == 1.267282505008739068586010034778155386447906494140625p-72
; [HW: 1.267282505008739068586010034778155386447906494140625p-72] 

; mpf : + 1203733389960010 -72
; mpfd: + 1203733389960010 -72 (2.68358e-022) class: Pos. norm. non-zero
; hwf : + 1203733389960010 -72 (2.68358e-022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101111 #b1001101100100011001000111110011010111011011000011010)))
(assert (= r (fp #b0 #b01110110111 #b0100010001101100101000000101000111001110001101001010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

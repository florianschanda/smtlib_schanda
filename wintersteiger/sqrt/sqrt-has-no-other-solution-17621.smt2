(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.334432237542115817774401875794865190982818603515625p114 {+ 1506148900375354 114 (2.77151e+034)}
; 1.334432237542115817774401875794865190982818603515625p114 S == 1.155176279856072962815005666925571858882904052734375p57
; [HW: 1.155176279856072962815005666925571858882904052734375p57] 

; mpf : + 698851836136550 57
; mpfd: + 698851836136550 57 (1.66478e+017) class: Pos. norm. non-zero
; hwf : + 698851836136550 57 (1.66478e+017) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110001 #b0101010110011101010110011110001011111000101100111010)))
(assert (= r (fp #b0 #b10000111000 #b0010011110111001101000011111011100011000110001100110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

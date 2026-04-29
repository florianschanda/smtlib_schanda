(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4283775791504067509407605029991827905178070068359375p-96 {+ 1929241105835647 -96 (1.80287e-029)}
; 1.4283775791504067509407605029991827905178070068359375p-96 S == 1.1951475135523674797610738096409477293491363525390625p-48
; [HW: 1.1951475135523674797610738096409477293491363525390625p-48] 

; mpf : + 878866269316721 -48
; mpfd: + 878866269316721 -48 (4.24602e-015) class: Pos. norm. non-zero
; hwf : + 878866269316721 -48 (4.24602e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011111 #b0110110110101010001001110010110011001010011001111111)))
(assert (= r (fp #b0 #b01111001111 #b0011000111110101001011111111110010011010011001110001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

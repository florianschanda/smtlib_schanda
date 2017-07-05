(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8132137780928057058105196119868196547031402587890625 902 {+ 3662389267991313 902 (6.13063e+271)}
; 1.8132137780928057058105196119868196547031402587890625 902 I == 1.8132137780928057058105196119868196547031402587890625 902
; [HW: 1.8132137780928057058105196119868196547031402587890625 902] 

; mpf : + 3662389267991313 902
; mpfd: + 3662389267991313 902 (6.13063e+271) class: Pos. norm. non-zero
; hwf : + 3662389267991313 902 (6.13063e+271) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110000101 #b1101000000101110110001110011010110010000101100010001)))
(assert (= r (fp #b0 #b11110000101 #b1101000000101110110001110011010110010000101100010001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.32385820711548607420127154910005629062652587890625 522 {- 1458527700886180 522 (-1.8176e+157)}
; -1.32385820711548607420127154910005629062652587890625 522 I == -1.32385820711548607420127154910005629062652587890625 522
; [HW: -1.32385820711548607420127154910005629062652587890625 522] 

; mpf : - 1458527700886180 522
; mpfd: - 1458527700886180 522 (-1.8176e+157) class: Neg. norm. non-zero
; hwf : - 1458527700886180 522 (-1.8176e+157) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000001001 #b0101001011101000010111110001100000011010001010100100)))
(assert (= r (fp #b1 #b11000001001 #b0101001011101000010111110001100000011010001010100100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.09536951144645744449235280626453459262847900390625 128 {+ 429506096212772 128 (3.72735e+038)}
; 1.09536951144645744449235280626453459262847900390625 128 I == 1.09536951144645744449235280626453459262847900390625 128
; [HW: 1.09536951144645744449235280626453459262847900390625 128] 

; mpf : + 429506096212772 128
; mpfd: + 429506096212772 128 (3.72735e+038) class: Pos. norm. non-zero
; hwf : + 429506096212772 128 (3.72735e+038) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001111111 #b0001100001101010001000101110010010110010101100100100)))
(assert (= r (fp #b0 #b10001111111 #b0001100001101010001000101110010010110010101100100100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)

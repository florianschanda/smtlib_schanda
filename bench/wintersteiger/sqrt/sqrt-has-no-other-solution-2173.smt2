(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6889953566008439889145620327326469123363494873046875p-129 {+ 3102959231247563 -129 (2.48176e-039)}
; 1.6889953566008439889145620327326469123363494873046875p-129 S == 1.8379310958797361319483343322644941508769989013671875p-65
; [HW: 1.8379310958797361319483343322644941508769989013671875p-65] 

; mpf : + 3773706171166131 -65
; mpfd: + 3773706171166131 -65 (4.98172e-020) class: Pos. norm. non-zero
; hwf : + 3773706171166131 -65 (4.98172e-020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101111110 #b1011000001100001111111111110101110110010010011001011)))
(assert (= r (fp #b0 #b01110111110 #b1101011010000010101001101111110100011010110110110011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

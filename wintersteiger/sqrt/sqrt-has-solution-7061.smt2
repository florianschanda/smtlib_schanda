(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.405040722939570940752673777751624584197998046875p-431 {+ 1824141248900528 -431 (2.53373e-130)}
; 1.405040722939570940752673777751624584197998046875p-431 S == 1.67632975451703458702468196861445903778076171875p-216
; [HW: 1.67632975451703458702468196861445903778076171875p-216] 

; mpf : + 3045918430422496 -216
; mpfd: + 3045918430422496 -216 (1.59177e-065) class: Pos. norm. non-zero
; hwf : + 3045918430422496 -216 (1.59177e-065) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001010000 #b0110011110110000101111111011001010010010110110110000)))
(assert (= r (fp #b0 #b01100100111 #b1010110100100011111100100110000011110110010111100000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

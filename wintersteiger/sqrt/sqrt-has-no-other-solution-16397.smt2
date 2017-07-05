(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4842425868613009498631072347052395343780517578125p92 {+ 2180834733745480 92 (7.34961e+027)}
; 1.4842425868613009498631072347052395343780517578125p92 S == 1.218294950683659561008198579656891524791717529296875p46
; [HW: 1.218294950683659561008198579656891524791717529296875p46] 

; mpf : + 983113058555790 46
; mpfd: + 983113058555790 46 (8.57299e+013) class: Pos. norm. non-zero
; hwf : + 983113058555790 46 (8.57299e+013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011011 #b0111101111110111010100100111100111100110010101001000)))
(assert (= r (fp #b0 #b10000101101 #b0011011111100010001011011000101000010001011110001110)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

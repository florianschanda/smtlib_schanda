(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.056765147481211641888876329176127910614013671875p-565 {+ 255647497044016 -565 (8.75046e-171)}
; 1.056765147481211641888876329176127910614013671875p-565 S == 1.453798574412020538915157885639928281307220458984375p-283
; [HW: 1.453798574412020538915157885639928281307220458984375p-283] 

; mpf : + 2043727090623238 -283
; mpfd: + 2043727090623238 -283 (9.35439e-086) class: Pos. norm. non-zero
; hwf : + 2043727090623238 -283 (9.35439e-086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111001010 #b0000111010001000001010010010001111111100000000110000)))
(assert (= r (fp #b0 #b01011100100 #b0111010000101100001001001011010000010010001100000110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

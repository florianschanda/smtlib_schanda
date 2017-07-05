(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.02763618020348612702719037770293653011322021484375p416 {+ 124462290866364 416 (1.73907e+125)}
; 1.02763618020348612702719037770293653011322021484375p416 S == 1.0137239171507623769485917364363558590412139892578125p208
; [HW: 1.0137239171507623769485917364363558590412139892578125p208] 

; mpf : + 61807028166237 208
; mpfd: + 61807028166237 208 (4.17022e+062) class: Pos. norm. non-zero
; hwf : + 61807028166237 208 (4.17022e+062) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110011111 #b0000011100010011001010100010101000101001000010111100)))
(assert (= r (fp #b0 #b10011001111 #b0000001110000011011010010001111101010101111001011101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

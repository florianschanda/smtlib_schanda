(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.053338168190929291512247800710611045360565185546875p978 {+ 240213754389294 978 (2.69094e+294)}
; 1.053338168190929291512247800710611045360565185546875p978 S == 1.0263226433197940590247299041948281228542327880859375p489
; [HW: 1.0263226433197940590247299041948281228542327880859375p489] 

; mpf : + 118546646646431 489
; mpfd: + 118546646646431 489 (1.64041e+147) class: Pos. norm. non-zero
; hwf : + 118546646646431 489 (1.64041e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010001 #b0000110110100111100100011111100000000010001100101110)))
(assert (= r (fp #b0 #b10111101000 #b0000011010111101000101001010110000110011111010011111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

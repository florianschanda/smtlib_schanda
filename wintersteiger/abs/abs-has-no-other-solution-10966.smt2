(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.986613084769134562890258166589774191379547119140625p-264 {- 4443310320925130 -264 (-6.70185e-080)}
; -1.986613084769134562890258166589774191379547119140625p-264 | == 1.986613084769134562890258166589774191379547119140625p-264
; [HW: 1.986613084769134562890258166589774191379547119140625p-264] 

; mpf : + 4443310320925130 -264
; mpfd: + 4443310320925130 -264 (6.70185e-080) class: Pos. norm. non-zero
; hwf : + 4443310320925130 -264 (6.70185e-080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011110111 #b1111110010010010101011001101010011100011100111001010)))
(assert (= r (fp #b0 #b01011110111 #b1111110010010010101011001101010011100011100111001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

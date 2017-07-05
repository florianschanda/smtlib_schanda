(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2198781705177157430597389975446276366710662841796875p-503 {+ 990243246810491 -503 (4.65831e-152)}
; 1.2198781705177157430597389975446276366710662841796875p-503 S == 1.5619719399001479320787666438263840973377227783203125p-252
; [HW: 1.5619719399001479320787666438263840973377227783203125p-252] 

; mpf : + 2530896619126981 -252
; mpfd: + 2530896619126981 -252 (2.15831e-076) class: Pos. norm. non-zero
; hwf : + 2530896619126981 -252 (2.15831e-076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000001000 #b0011100001001001111011111000111101111010010101111011)))
(assert (= r (fp #b0 #b01100000011 #b1000111111011101011001001001111100100100000011000101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)

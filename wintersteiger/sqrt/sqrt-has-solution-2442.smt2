(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.711301521219545929142213935847394168376922607421875p708 {+ 3203417265912414 708 (2.30443e+213)}
; 1.711301521219545929142213935847394168376922607421875p708 S == 1.30816723748133423299577771103940904140472412109375p354
; [HW: 1.30816723748133423299577771103940904140472412109375p354] 

; mpf : + 1387861855888732 354
; mpfd: + 1387861855888732 354 (4.80045e+106) class: Pos. norm. non-zero
; hwf : + 1387861855888732 354 (4.80045e+106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000011 #b1011011000010111110110110100001100111011101001011110)))
(assert (= r (fp #b0 #b10101100001 #b0100111011100100000011000100111010101110010101011100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

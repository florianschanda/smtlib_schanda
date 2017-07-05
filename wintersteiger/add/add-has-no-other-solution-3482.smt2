(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6160312701069299290423941783956252038478851318359375p-270 {+ 2774358198502143 -270 (8.51826e-082)}
; Y = 1.886101789118630023267542128451168537139892578125p83 {+ 3990647687286992 83 (1.82413e+025)}
; 1.6160312701069299290423941783956252038478851318359375p-270 + 1.886101789118630023267542128451168537139892578125p83 == 1.8861017891186302453121470534824766218662261962890625p83
; [HW: 1.8861017891186302453121470534824766218662261962890625p83] 

; mpf : + 3990647687286993 83
; mpfd: + 3990647687286993 83 (1.82413e+025) class: Pos. norm. non-zero
; hwf : + 3990647687286993 83 (1.82413e+025) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011110001 #b1001110110110100001110011010111001101100001011111111)))
(assert (= y (fp #b0 #b10001010010 #b1110001011010111100100010001110100110001000011010000)))
(assert (= r (fp #b0 #b10001010010 #b1110001011010111100100010001110100110001000011010001)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)

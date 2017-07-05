(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4329904500809582668097164059872739017009735107421875p936 {- 1950015629639587 936 (-8.32375e+281)}
; Y = -1.3634829300763737780499695873004384338855743408203125p-78 {- 1636981588447493 -78 (-4.51139e-024)}
; -1.4329904500809582668097164059872739017009735107421875p936 % -1.3634829300763737780499695873004384338855743408203125p-78 == -1.120182069460526452786552908946759998798370361328125p-78
; [HW: -1.120182069460526452786552908946759998798370361328125p-78] 

; mpf : - 541251923239042 -78
; mpfd: - 541251923239042 -78 (-3.70637e-024) class: Neg. norm. non-zero
; hwf : - 541251923239042 -78 (-3.70637e-024) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100111 #b0110111011011000011101100100111010010011111110100011)))
(assert (= y (fp #b1 #b01110110001 #b0101110100001101001101111010000101010101000100000101)))
(assert (= r (fp #b0 #b01110101110 #xf247b8bb78418)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)

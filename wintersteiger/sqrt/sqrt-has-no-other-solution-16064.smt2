(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7908800790036616401579294688417576253414154052734375p-838 {+ 3561807229095639 -838 (9.7708e-253)}
; 1.7908800790036616401579294688417576253414154052734375p-838 S == 1.3382376765745542801511192010366357862949371337890625p-419
; [HW: 1.3382376765745542801511192010366357862949371337890625p-419] 

; mpf : + 1523287074183825 -419
; mpfd: + 1523287074183825 -419 (9.88474e-127) class: Pos. norm. non-zero
; hwf : + 1523287074183825 -419 (9.88474e-127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111001 #b1100101001110111000111011110101001100000111011010111)))
(assert (= r (fp #b0 #b01001011100 #b0101011010010110101111101000111100101001101010010001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

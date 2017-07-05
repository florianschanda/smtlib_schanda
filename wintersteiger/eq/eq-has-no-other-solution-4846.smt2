(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6841612997786457039950391845195554196834564208984375p-25 {- 3081188574744423 -25 (-5.01919e-008)}
; Y = -1.6185684219038589670702776857069693505764007568359375p-1016 {- 2785784514389375 -1016 (-2.30492e-306)}
; -1.6841612997786457039950391845195554196834564208984375p-25 = -1.6185684219038589670702776857069693505764007568359375p-1016 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111100110 #b1010111100100101001100011110011110111100111101100111)))
(assert (= y (fp #b1 #b00000000111 #b1001111001011010100000000000011001101010010101111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

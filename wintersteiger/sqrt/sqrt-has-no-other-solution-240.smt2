(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.31522337305629566372999761370010673999786376953125p-666 {+ 1419639865434804 -666 (4.29559e-201)}
; 1.31522337305629566372999761370010673999786376953125p-666 S == 1.1468318852631782522877301744301803410053253173828125p-333
; [HW: 1.1468318852631782522877301744301803410053253173828125p-333] 

; mpf : + 661272023757357 -333
; mpfd: + 661272023757357 -333 (6.55407e-101) class: Pos. norm. non-zero
; hwf : + 661272023757357 -333 (6.55407e-101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101100101 #b0101000010110010011110101001111000110110001010110100)))
(assert (= r (fp #b0 #b01010110010 #b0010010110010110110001100100000100110111001000101101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.099854487630711474821509909816086292266845703125p-859 {- 449704633284944 -859 (-2.86134e-259)}
; Y = -1.786640839226382393434278128552250564098358154296875p2 {- 3542715390414350 2 (-7.14656)}
; -1.099854487630711474821509909816086292266845703125p-859 % -1.786640839226382393434278128552250564098358154296875p2 == -1.099854487630711474821509909816086292266845703125p-859
; [HW: -1.099854487630711474821509909816086292266845703125p-859] 

; mpf : - 449704633284944 -859
; mpfd: - 449704633284944 -859 (-2.86134e-259) class: Neg. norm. non-zero
; hwf : - 449704633284944 -859 (-2.86134e-259) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010100100 #b0001100110010000000100000100111010111011100101010000)))
(assert (= y (fp #b1 #b10000000001 #b1100100101100001010010110100011000101100111000001110)))
(assert (= r (fp #b1 #b00010100100 #x1990104ebb950)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

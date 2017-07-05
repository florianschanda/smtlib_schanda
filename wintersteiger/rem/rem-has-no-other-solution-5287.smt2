(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9107247913913862902290929923765361309051513671875p-859 {- 4101539831147320 -859 (-4.97086e-259)}
; Y = 1.9437682384423791148719828925095498561859130859375p727 {+ 4250354286973208 727 (1.37231e+219)}
; -1.9107247913913862902290929923765361309051513671875p-859 % 1.9437682384423791148719828925095498561859130859375p727 == -1.9107247913913862902290929923765361309051513671875p-859
; [HW: -1.9107247913913862902290929923765361309051513671875p-859] 

; mpf : - 4101539831147320 -859
; mpfd: - 4101539831147320 -859 (-4.97086e-259) class: Neg. norm. non-zero
; hwf : - 4101539831147320 -859 (-4.97086e-259) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010100100 #b1110100100100101010000101000101010101110101100111000)))
(assert (= y (fp #b0 #b11011010110 #b1111000110011010110010111001011100011101000100011000)))
(assert (= r (fp #b1 #b00010100100 #xe925428aaeb38)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

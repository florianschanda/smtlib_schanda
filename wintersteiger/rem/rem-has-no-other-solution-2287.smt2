(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9104021433001328045264699539984576404094696044921875p-999 {+ 4100086753323779 -999 (3.56582e-301)}
; Y = -1.65700713907132257673993080970831215381622314453125p-276 {- 2958897106701364 -276 (-1.36473e-083)}
; 1.9104021433001328045264699539984576404094696044921875p-999 % -1.65700713907132257673993080970831215381622314453125p-276 == 1.9104021433001328045264699539984576404094696044921875p-999
; [HW: 1.9104021433001328045264699539984576404094696044921875p-999] 

; mpf : + 4100086753323779 -999
; mpfd: + 4100086753323779 -999 (3.56582e-301) class: Pos. norm. non-zero
; hwf : + 4100086753323779 -999 (3.56582e-301) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011000 #b1110100100010000000111010110011110101110101100000011)))
(assert (= y (fp #b1 #b01011101011 #b1010100000110001100111101010111110001100110000110100)))
(assert (= r (fp #b0 #b00000011000 #xe9101d67aeb03)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

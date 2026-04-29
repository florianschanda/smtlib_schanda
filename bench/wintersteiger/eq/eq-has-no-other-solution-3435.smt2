(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.70527422670340467192318101297132670879364013671875p327 {+ 3176272744575468 327 (4.66233e+098)}
; Y = -1.21112348376851830522582531557418406009674072265625p774 {- 950815642829060 774 (-1.20339e+233)}
; 1.70527422670340467192318101297132670879364013671875p327 = -1.21112348376851830522582531557418406009674072265625p774 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101000110 #b1011010010001100110110100000101001100111000111101100)))
(assert (= y (fp #b1 #b11100000101 #b0011011000001100001100000100101000110100000100000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

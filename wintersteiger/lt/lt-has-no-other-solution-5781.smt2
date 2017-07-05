(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.15332182432777141656288222293369472026824951171875p-492 {+ 690500110910316 -492 (9.01971e-149)}
; Y = 1.3041130315179676468773095621145330369472503662109375p-38 {+ 1369603335422831 -38 (4.74434e-012)}
; 1.15332182432777141656288222293369472026824951171875p-492 < 1.3041130315179676468773095621145330369472503662109375p-38 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000010011 #b0010011101000000000110010101110101000000001101101100)))
(assert (= y (fp #b0 #b01111011001 #b0100110111011010010110100000010010101000001101101111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

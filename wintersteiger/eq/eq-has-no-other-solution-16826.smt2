(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3253534399793480691442937313695438206195831298828125p430 {+ 1465261631054701 430 (3.67477e+129)}
; Y = 1.22846555609402319220180288539268076419830322265625p-873 {+ 1028917393292036 -873 (1.95064e-263)}
; 1.3253534399793480691442937313695438206195831298828125p430 = 1.22846555609402319220180288539268076419830322265625p-873 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110101101 #b0101001101001010010111001111000001011010001101101101)))
(assert (= y (fp #b0 #b00010010110 #b0011101001111100101101111111101110101111101100000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

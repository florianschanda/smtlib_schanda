(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0190362987399839145297164577641524374485015869140625p-593 {+ 85731867911905 -593 (3.14342e-179)}
; Y = 1.536790038061825125481618670164607465267181396484375p-872 {+ 2417487415391430 -872 (4.88043e-263)}
; 1.0190362987399839145297164577641524374485015869140625p-593 > 1.536790038061825125481618670164607465267181396484375p-872 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101110 #b0000010011011111100100000001100010000110011011100001)))
(assert (= y (fp #b0 #b00010010111 #b1000100101101011000100100110101001001011010011000110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

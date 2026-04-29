(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2440746164444558274908558814786374568939208984375p20 {+ 1099214351669848 20 (1.30451e+006)}
; Y = -1.603759387281276094228132933494634926319122314453125p273 {- 2719090551581394 273 (-2.43404e+082)}
; 1.2440746164444558274908558814786374568939208984375p20 > -1.603759387281276094228132933494634926319122314453125p273 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000010011 #b0011111001111011101011001000111101101001101001011000)))
(assert (= y (fp #b1 #b10100010000 #b1001101010001111111110011010011100000110101011010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

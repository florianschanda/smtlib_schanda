(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.507026341769971633510749597917310893535614013671875p621 {+ 2283443643862270 621 (1.31144e+187)}
; Y = -1.538292664557388444990237985621206462383270263671875p-688 {- 2424254643516926 -688 (-1.19785e-207)}
; 1.507026341769971633510749597917310893535614013671875p621 = -1.538292664557388444990237985621206462383270263671875p-688 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101100 #b1000000111001100011110100111010000011100110011111110)))
(assert (= y (fp #b1 #b00101001111 #b1000100111001101100011000100110111110011010111111110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

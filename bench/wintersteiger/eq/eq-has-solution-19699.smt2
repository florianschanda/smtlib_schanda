(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.594853503161229202333970533800311386585235595703125p3 {- 2678982015176946 3 (-12.7588)}
; Y = -1.0680164066783859322384842016617767512798309326171875p678 {- 306318663771859 678 (-1.33941e+204)}
; -1.594853503161229202333970533800311386585235595703125p3 = -1.0680164066783859322384842016617767512798309326171875p678 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000010 #b1001100001001000010100011011010111111101000011110010)))
(assert (= y (fp #b1 #b11010100101 #b0001000101101001100001011111001001000110011011010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

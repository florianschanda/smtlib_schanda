(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.203814078444537027934302386711351573467254638671875p-161 {+ 917897007735678 -161 (4.11842e-049)}
; Y = 1.597735936187112404383015018538571894168853759765625p-642 {+ 2691963339478234 -642 (8.75483e-194)}
; 1.203814078444537027934302386711351573467254638671875p-161 > 1.597735936187112404383015018538571894168853759765625p-642 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011110 #b0011010000101101001010001101000101100010001101111110)))
(assert (= y (fp #b0 #b00101111101 #b1001100100000101001110001110100110010001010011011010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

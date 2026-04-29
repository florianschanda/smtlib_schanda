(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4297127932850184350854760850779712200164794921875p-849 {- 1935254375714744 -849 (-3.80875e-256)}
; Y = -1.5529111979228777951078654950833879411220550537109375p630 {- 2490090664934447 630 (-6.91901e+189)}
; -1.4297127932850184350854760850779712200164794921875p-849 = -1.5529111979228777951078654950833879411220550537109375p630 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101110 #b0110111000000001101010000101100111010100111110111000)))
(assert (= y (fp #b1 #b11001110101 #b1000110110001011100101101001100010101011110000101111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

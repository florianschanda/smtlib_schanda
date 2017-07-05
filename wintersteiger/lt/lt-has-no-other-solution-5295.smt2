(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2508072650624757482518134565907530486583709716796875p699 {+ 1129535505477179 699 (3.28971e+210)}
; Y = -1.403831759585018712499504545121453702449798583984375p175 {- 1818696561987462 175 (-6.72302e+052)}
; 1.2508072650624757482518134565907530486583709716796875p699 < -1.403831759585018712499504545121453702449798583984375p175 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010111010 #b0100000000110100111001111010100100001010111000111011)))
(assert (= y (fp #b1 #b10010101110 #b0110011101100001100001001010100010000000111110000110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

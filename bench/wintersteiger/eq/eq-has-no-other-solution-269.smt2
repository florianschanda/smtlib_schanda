(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.068161704247334586881379436817951500415802001953125p127 {+ 306973025849234 127 (1.81738e+038)}
; Y = -1.198437460598664738853358358028344810009002685546875p60 {- 893682873608494 60 (-1.3817e+018)}
; 1.068161704247334586881379436817951500415802001953125p127 = -1.198437460598664738853358358028344810009002685546875p60 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111110 #b0001000101110011000010111010001010010100111110010010)))
(assert (= y (fp #b1 #b10000111011 #b0011001011001100110011000010001110010010100100101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

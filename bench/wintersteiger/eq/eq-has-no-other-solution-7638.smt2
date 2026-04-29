(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.29078636416937797548598609864711761474609375p-673 {- 1309585361317632 -673 (-3.29357e-203)}
; Y = -1.953848667536127958754832434351556003093719482421875p195 {- 4295752503683550 195 (-9.81161e+058)}
; -1.29078636416937797548598609864711761474609375p-673 = -1.953848667536127958754832434351556003093719482421875p195 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011110 #b0100101001110000111110011010010000111010111100000000)))
(assert (= y (fp #b1 #b10011000010 #b1111010000101111011011010010000001100110100111011110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

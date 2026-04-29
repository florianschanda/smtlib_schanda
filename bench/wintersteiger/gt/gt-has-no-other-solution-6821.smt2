(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.769319719687938441410324230673722922801971435546875p890 {- 3464708002915374 890 (-1.4605e+268)}
; Y = 1.690624612253550207441321617807261645793914794921875p927 {+ 3110296746397982 927 (1.91802e+279)}
; -1.769319719687938441410324230673722922801971435546875p890 > 1.690624612253550207441321617807261645793914794921875p927 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111001 #b1100010011110010001000110001110000111010010000101110)))
(assert (= y (fp #b0 #b11110011110 #b1011000011001100110001100100101101110001000100011110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

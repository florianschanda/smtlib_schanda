(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2508798091715862543793491568067111074924468994140625p868 {+ 1129862215099937 868 (2.46179e+261)}
; Y = +zero {+ 0 -1023 (0)}
; 1.2508798091715862543793491568067111074924468994140625p868 < +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101100011 #b0100000000111001101010001011111110011110011000100001)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

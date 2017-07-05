(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.412241500401276272924633303773589432239532470703125p-203 {+ 1856570667593842 -203 (1.09855e-061)}
; Y = -1.5403198260827293264441095743677578866481781005859375p450 {- 2433384167407071 450 (-4.47826e+135)}
; 1.412241500401276272924633303773589432239532470703125p-203 < -1.5403198260827293264441095743677578866481781005859375p450 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100110100 #b0110100110001000101010001011001001000111000001110010)))
(assert (= y (fp #b1 #b10111000001 #b1000101001010010011001100110111001100111110111011111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

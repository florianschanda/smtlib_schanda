(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.945876245798167314404736316646449267864227294921875p-145 {- 4259847908115230 -145 (-4.36281e-044)}
; Y = -1.37256886398369459811874548904597759246826171875p-492 {- 1677900997006816 -492 (-1.07344e-148)}
; -1.945876245798167314404736316646449267864227294921875p-145 > -1.37256886398369459811874548904597759246826171875p-492 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101110 #b1111001000100100111100100001010111000100001100011110)))
(assert (= y (fp #b1 #b01000010011 #b0101111101100000101011000100111001010001010111100000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

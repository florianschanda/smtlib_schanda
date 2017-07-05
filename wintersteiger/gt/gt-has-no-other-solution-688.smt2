(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3710099339477668234366092292475514113903045654296875p915 {- 1670880200277915 915 (-3.7974e+275)}
; Y = 1.7257785444661386531350899531389586627483367919921875p-69 {+ 3268615982411203 -69 (2.92358e-021)}
; -1.3710099339477668234366092292475514113903045654296875p915 > 1.7257785444661386531350899531389586627483367919921875p-69 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110010010 #b0101111011111010100000011100110011001011111110011011)))
(assert (= y (fp #b0 #b01110111010 #b1011100111001100100111110110100010011110110111000011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

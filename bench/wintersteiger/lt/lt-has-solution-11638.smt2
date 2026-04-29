(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.10772489886631664290916887694038450717926025390625p659 {+ 485149814392868 659 (2.64971e+198)}
; Y = 1.999848573296513887243008866789750754833221435546875p-638 {+ 4502917662125102 -638 (1.75331e-192)}
; 1.10772489886631664290916887694038450717926025390625p659 < 1.999848573296513887243008866789750754833221435546875p-638 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010010 #b0001101110010011110110111110010110011000100000100100)))
(assert (= y (fp #b0 #b00110000001 #b1111111111110110000100110111101101000010110000101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

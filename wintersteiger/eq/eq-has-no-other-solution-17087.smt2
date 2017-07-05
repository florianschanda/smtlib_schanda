(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8592525543350209016324470212566666305065155029296875p-355 {- 3869729483520347 -355 (-2.53332e-107)}
; Y = 1.3777991494160362062615376999019645154476165771484375p301 {+ 1701456108530951 301 (5.61325e+090)}
; -1.8592525543350209016324470212566666305065155029296875p-355 = 1.3777991494160362062615376999019645154476165771484375p301 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011100 #b1101101111110111111110011011001111011111100101011011)))
(assert (= y (fp #b0 #b10100101100 #b0110000010110111011100011110111100110010110100000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

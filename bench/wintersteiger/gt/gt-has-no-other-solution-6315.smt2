(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5348041300047052803989799940609373152256011962890625p-309 {+ 2408543680605393 -309 (1.47158e-093)}
; Y = 1.1457815752386844021515344138606451451778411865234375p273 {+ 656541847922423 273 (1.73896e+082)}
; 1.5348041300047052803989799940609373152256011962890625p-309 > 1.1457815752386844021515344138606451451778411865234375p273 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001010 #b1000100011101000111011000110100000100010110011010001)))
(assert (= y (fp #b0 #b10100010000 #b0010010101010001111100001111101000000010011011110111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

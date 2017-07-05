(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4976203272226891183294128495617769658565521240234375p367 {+ 2241082720252087 367 (4.50205e+110)}
; Y = 1.07480464161278721491044052527286112308502197265625p209 {+ 336890156092932 209 (8.84298e+062)}
; 1.4976203272226891183294128495617769658565521240234375p367 < 1.07480464161278721491044052527286112308502197265625p209 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101110 #b0111111101100100000010111011011100111111000010110111)))
(assert (= y (fp #b0 #b10011010000 #b0001001100100110011001011010000101010000111000000100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

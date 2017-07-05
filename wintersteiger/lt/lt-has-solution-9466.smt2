(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3480844922308976574498728950857184827327728271484375p-362 {+ 1567633189504519 -362 (1.43502e-109)}
; Y = -1.5779784300934089902312962294672615826129913330078125p556 {- 2602983442396861 556 (-3.72202e+167)}
; 1.3480844922308976574498728950857184827327728271484375p-362 < -1.5779784300934089902312962294672615826129913330078125p556 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010101 #b0101100100011100000100001011011001100000011000000111)))
(assert (= y (fp #b1 #b11000101011 #b1001001111110110011001001111011100001011011010111101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

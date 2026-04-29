(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.042888118175152811772932182066142559051513671875p-474 {- 193150913032240 -474 (-2.13806e-143)}
; Y = -1.2546505002966854558366094352095387876033782958984375p217 {- 1146843898245863 217 (-2.6426e+065)}
; -1.042888118175152811772932182066142559051513671875p-474 > -1.2546505002966854558366094352095387876033782958984375p217 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100101 #b0000101011111010101101110011100011110011000000110000)))
(assert (= y (fp #b1 #b10011011000 #b0100000100110000110001100111001010101111001011100111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

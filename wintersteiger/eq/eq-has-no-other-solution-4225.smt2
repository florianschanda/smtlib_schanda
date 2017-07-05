(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.866684871665874378976468506152741611003875732421875p549 {+ 3903201665082078 549 (3.43984e+165)}
; Y = -1.8605531521104043957137719189631752669811248779296875p969 {- 3875586855176923 969 (-9.28342e+291)}
; 1.866684871665874378976468506152741611003875732421875p549 = -1.8605531521104043957137719189631752669811248779296875p969 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100100 #b1101110111011111000011110100101110111110001011011110)))
(assert (= y (fp #b1 #b11111001000 #b1101110001001101001101100001110011001000101011011011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

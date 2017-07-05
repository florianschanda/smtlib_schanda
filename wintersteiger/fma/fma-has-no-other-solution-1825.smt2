(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4792586739805926310253880728851072490215301513671875p-836 {- 2158389185553075 -836 (-3.22825e-252)}
; Y = -1.6019598968520141202276363401324488222599029541015625p354 {- 2710986367154713 354 (-5.87855e+106)}
; Z = 1.9274795553492032329501171261654235422611236572265625p28 {+ 4176996579864425 28 (5.17404e+008)}
; -1.4792586739805926310253880728851072490215301513671875p-836 x -1.6019598968520141202276363401324488222599029541015625p354 1.9274795553492032329501171261654235422611236572265625p28 == 1.927479555349203454994722051196731626987457275390625p28
; [HW: 1.927479555349203454994722051196731626987457275390625p28] 

; mpf : + 4176996579864426 28
; mpfd: + 4176996579864426 28 (5.17404e+008) class: Pos. norm. non-zero
; hwf : + 4176996579864426 28 (5.17404e+008) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111011 #b0111101010110000101100100100101100010010001010110011)))
(assert (= y (fp #b1 #b10101100001 #b1001101000011010000010110011011001111011101000011001)))
(assert (= z (fp #b0 #b10000011011 #b1110110101101111010011001101010111101110111101101001)))
(assert (= r (fp #b0 #b10000011011 #b1110110101101111010011001101010111101110111101101010)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)

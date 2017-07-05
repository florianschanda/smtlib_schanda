(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2135524915116395749947741933283396065235137939453125p720 {+ 961754921195861 720 (6.69353e+216)}
; Y = -1.474234913868763374722448133979924023151397705078125p773 {- 2135764181385442 773 (-7.32408e+232)}
; Z = 1.2612354358158339717732587814680300652980804443359375p-132 {+ 1176499811396159 -132 (2.31652e-040)}
; 1.2135524915116395749947741933283396065235137939453125p720 x -1.474234913868763374722448133979924023151397705078125p773 1.2612354358158339717732587814680300652980804443359375p-132 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001111 #b0011011010101011011000000100011100000101100101010101)))
(assert (= y (fp #b1 #b11100000100 #b0111100101100111011101011001010110110000000011100010)))
(assert (= z (fp #b0 #b01101111011 #b0100001011100000010100110101010101100010101000111111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)

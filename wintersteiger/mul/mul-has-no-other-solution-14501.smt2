(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.405083399067603711074525563162751495838165283203125p897 {- 1824333445094834 897 (-1.4846e+270)}
; Y = 1.3390333671656069469690919504500925540924072265625p-301 {+ 1526870546033192 -301 (3.28672e-091)}
; -1.405083399067603711074525563162751495838165283203125p897 * 1.3390333671656069469690919504500925540924072265625p-301 == -1.8814535550019895193685215417644940316677093505859375p596
; [HW: -1.8814535550019895193685215417644940316677093505859375p596] 

; mpf : - 3969713901851359 596
; mpfd: - 3969713901851359 596 (-4.87945e+179) class: Neg. norm. non-zero
; hwf : - 3969713901851359 596 (-4.87945e+179) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110000000 #b0110011110110011100010111010111100100101110110110010)))
(assert (= y (fp #b0 #b01011010010 #b0101011011001010111001000000100000111010101000101000)))
(assert (= r (fp #b1 #b11001010011 #b1110000110100110111100001010111110101101001011011111)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

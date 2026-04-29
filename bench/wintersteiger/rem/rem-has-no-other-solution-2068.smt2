(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.981615917382895997178593461285345256328582763671875p56 {- 4420805079746558 56 (-1.4279e+017)}
; Y = -1.799664525286743810283951461315155029296875p-432 {- 3601368858102784 -432 (-1.62268e-130)}
; -1.981615917382895997178593461285345256328582763671875p56 % -1.799664525286743810283951461315155029296875p-432 == -1.730627945533115052967332303524017333984375p-432
; [HW: -1.730627945533115052967332303524017333984375p-432] 

; mpf : - 3290455743249408 -432
; mpfd: - 3290455743249408 -432 (-1.56043e-130) class: Neg. norm. non-zero
; hwf : - 3290455743249408 -432 (-1.56043e-130) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110111 #b1111101101001011001011100100011001100100011111111110)))
(assert (= y (fp #b1 #b01001001111 #b1100110010110110110100000111011111100000110000000000)))
(assert (= r (fp #b0 #b01001001011 #x1ac619c450000)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.268347793515836929856277492945082485675811767578125p-309 {+ 1208531022883618 -309 (1.2161e-093)}
; Y = -1.6985178964802971623981875382014550268650054931640625p-129 {- 3145844938300289 -129 (-2.49575e-039)}
; 1.268347793515836929856277492945082485675811767578125p-309 + -1.6985178964802971623981875382014550268650054931640625p-129 == -1.698517896480296940353582613170146942138671875p-129
; [HW: -1.698517896480296940353582613170146942138671875p-129] 

; mpf : - 3145844938300288 -129
; mpfd: - 3145844938300288 -129 (-2.49575e-039) class: Neg. norm. non-zero
; hwf : - 3145844938300288 -129 (-2.49575e-039) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001010 #b0100010010110010011100001110010100011010101100100010)))
(assert (= y (fp #b1 #b01101111110 #b1011001011010010000100011010000100001101101110000001)))
(assert (= r (fp #b1 #b01101111110 #b1011001011010010000100011010000100001101101110000000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.06885305491964910373781094676814973354339599609375p-614 {- 310086592479452 -614 (-1.57217e-185)}
; Y = 1.6618433525450655441346725638140924274921417236328125p-942 {+ 2980677475899597 -942 (4.47027e-284)}
; -1.06885305491964910373781094676814973354339599609375p-614 = 1.6618433525450655441346725638140924274921417236328125p-942 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110011001 #b0001000110100000010110101001001100011100000011011100)))
(assert (= y (fp #b0 #b00001010001 #b1010100101101110100100001110001001000001100011001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
